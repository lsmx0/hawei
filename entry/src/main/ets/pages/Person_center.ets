import { PersonComponent, PersonData } from './Data/PersonComponent'


@Component
export default struct MyPage {
  @State userName: string = '林水蒙夕'
  @State icon: Resource = $r('app.media.Touxiang')

  build() {
    Column() {

      //头像及用户名
      Column({ space: 15 }) {
        Image(this.icon)
          .margin({ top: 10 })
          .width(70)
          .borderRadius(35)
        Text(this.userName)
          .fontWeight(600)
      }
      .width('95%')
      .height(120)
      .backgroundColor(Color.White)
      .borderRadius(10)
      .margin({ top: 20, bottom: 30 })

      //我的界面功能
      Scroll() {
        Column() {
          Grid() {
            ForEach(PersonData.PersonCard, (personcard: PersonComponent) => {
              GridItem() {
                Row() {
                  Image(personcard.icon)
                    .width(40)
                    .fillColor('#00CEF9')
                  Text(personcard.text)
                    .fontSize(20)
                    .fontWeight(600)
                    .fontColor('#00CEF9')
                  Text('')
                }
                .width('100%')
                .height(100)
                .borderRadius(12)
                .justifyContent(FlexAlign.SpaceAround)
                .backgroundColor(Color.White)
              }
            })
          }
          .width('95%')
          .height(700)
          .rowsGap(5)
          .rowsTemplate('1fr 1fr 1fr 1fr 1fr 1fr')
        }

      }
      .width('100%')
      .height(550)
      .scrollBar(BarState.Off)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#66d0c5c5')
  }
}