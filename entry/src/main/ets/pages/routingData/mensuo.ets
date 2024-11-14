import { router } from '@kit.ArkUI'
import { mensuoText, msg } from '../Data/mensuoText'

@Entry
@Component
struct Mensuo {
  build() {
    Column() {
      //头部状态行
      Row() {
        Image($r('app.media.arrow_left'))
          .width(25)
          .fillColor(Color.White)
          .onClick(() => {
           router.back()
          })
        Text('门锁')
          .fontWeight(700)
          .fontColor(Color.White)
          .fontSize(25)
        Image($r('app.media.externaldrive_fill_3'))
          .width(25)
          .fillColor(Color.White)
      }
      .width('90%')
      .height(50)
      .margin({ top: 10 })
      .justifyContent(FlexAlign.SpaceBetween)

     Scroll(){
       Column(){
         Grid() {
           ForEach(mensuoText.msg,(msg:msg)=>{
             GridItem() {
               Row() {
                 Image($r('app.media.bangzhu'))
                   .width(30)
                   .margin({left:10})
                   .fillColor(Color.Black)
                 Text(msg.title)
                   .textAlign(TextAlign.Center)
                   .fontSize(18)
                   .fontColor(Color.White)
                   .layoutWeight(1)
                 Text(msg.state)
                   .margin({right:10})
                   .textAlign(TextAlign.End)
                   .width(90)
                   .fontSize(15)
                   .fontColor(Color.White)
               }
               .width('95%')
               .height(80)
               .borderRadius(10)
               .justifyContent(FlexAlign.SpaceAround)
               .backgroundColor('#ff0eb2d2')
             }
             .width('100%')
             .height('100%')
           })
         }
         .width('95%')
         .height(1500)
         .rowsGap(10)
         .rowsTemplate('1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr ')
         .columnsTemplate('1fr')
       }
       .width('100%')
     }
     .width('100%')
     .height(715)
     .scrollBar(BarState.Off)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#00CEF9')
  }

}
