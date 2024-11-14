import { Home, HomeData } from "./Data/HomeData"
import { router } from "@kit.ArkUI"

@Entry
@Component
export struct HomePage {
  build() {
    Column() {
      Scroll() {
        Grid() {
          ForEach(HomeData.homedata, (home: Home) => {
            GridItem() {
              Column({space:20}) {
                Image(home.icon)
                  .width(70)
                Text(home.text)
              }
              .width(150)
              .height(150)
              .backgroundColor(Color.White)
              .borderRadius(10)
              .justifyContent(FlexAlign.SpaceAround)
              .onClick(()=>{
               AlertDialog.show({
                 message:'暂未开通！'
               })
              })
            }
          })
          GridItem(){
            Column({space:20}) {
              Image($r('app.media.mensuo'))
                .width(70)
              Text('智能门锁')
            }
            .width(150)
            .height(150)
            .backgroundColor(Color.White)
            .borderRadius(10)
            .justifyContent(FlexAlign.SpaceAround)
            .onClick(()=>{
              router.pushUrl({
                url:'pages/mensuo'
              })
            })
          }
        }
        .width('100%')
        .rowsTemplate('1fr 1fr 1fr 1fr 1fr 1fr')
        .columnsTemplate('1fr 1fr')
        .rowsGap(10)
        .columnsGap(10)
      }
      .width('100%')
      .height(1000)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#66d0c5c5')
  }
}