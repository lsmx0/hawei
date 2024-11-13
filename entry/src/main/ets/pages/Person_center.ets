import { PersonComponent, PersonData } from './Data/PersonComponent'

@Component
export default struct MyPage {
  @State userName: string = '林水蒙夕'

  build() {
    Column() {
      ColumnSplit() {
        //头像及用户名
        Column({ space: 15 }) {
          Image($r('app.media.Touxiang'))
            .margin({top:10})
            .width(70)
            .borderRadius(35)
          Text(this.userName)
            .fontWeight(600)
        }
        .width('100%')
        .height('18%')
        .margin({ top: 20, bottom: 10 })

        //功能
        Column() {
          ForEach(PersonData.PersonCard, (personcard: PersonComponent) => {
            Row() {
              Image(personcard.icon)
                .width(40)
                .fillColor('#00CEF9')
              Text(personcard.text)
                .fontWeight(600)
                .fontColor('#00CEF9')
              Text('')
            }
            .width('100%')
            .height(100)
            .borderRadius(15)
            .justifyContent(FlexAlign.SpaceAround)
            .backgroundColor(Color.White)

          })
        }
        .width('100%')
        .height('82%')
        .justifyContent(FlexAlign.SpaceAround)
      }
      .borderWidth(1)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#66d0c5c5')
  }
}