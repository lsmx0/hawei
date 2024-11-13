import { router } from '@kit.ArkUI';
import { http } from '@kit.NetworkKit';
import { BusinessError } from '@kit.BasicServicesKit';
import { Httptool } from './tools/Httptool';

interface User {
  Name: string
  Password: string
}

@Entry
@Component
struct LogIn {
  @State user: User = {
    Name: '',
    Password: ''
  }

  build() {
    Column({ space: 30 }) {
      //大LOGO
      Column() {
        Image($r('app.media.LOGO')).width(100).height(100).borderRadius(50)
        Text('Smart Access Control').fontSize(25).margin({ top: 10 }).fontColor('#00CEF9').fontWeight(600)
      }

      //登录实现
      Column({ space: 10 }) {
        TextInput({ placeholder: '请输入用户名/手机号', text: $$this.user.Name })
          .width('85%')
          .margin({ top: 10 })
        TextInput({ placeholder: '请输入密码', text: $$this.user.Password })
          .width('85%')
          .type(InputType.Password)
        Row() {
          Text('忘记密码')
            .fontSize(12)
            .fontColor('#00CEF9')
          Text('快速注册')
            .fontSize(12)
            .fontColor('#00CEF9')
        }
        .width('80%')
        .margin({ top: 10, bottom: 10 })
        .justifyContent(FlexAlign.SpaceBetween)

        Button('登录')
          .width('50%')
          .margin({ bottom: 10 })
          .backgroundColor('#00CEF9')
          .onClick(() => {
            this.Login()
            router.pushUrl({
              url: 'pages/main'
            })
          })
      }
      .margin({ top: 70 })
      .width('90%')
      .backgroundColor(Color.White)
      .borderRadius(20)

      //第三方登录方式
      Column({ space: 10 }) {
        Row() {
          Image($r('app.media.QQ'))
            .width(40)
          Text('QQ登陆')
            .fontSize(17)
        }
        .width('50%')
        .justifyContent(FlexAlign.SpaceAround)
        .backgroundColor('#00CEF9')
        .borderRadius(20)
        .onClick(() => {
          // TODO:跳转QQ

        })

        Row() {
          Image($r('app.media.wechat'))
            .width(40)
          Text('微信登陆')
            .fontSize(17)
        }
        .width('50%')
        .justifyContent(FlexAlign.SpaceAround)
        .backgroundColor('#00CEF9')
        .borderRadius(20)
        .onClick(() => {
          // TODO:跳转微信

        })

        Row() {
          Image($r('app.media.github'))
            .width(40)
          Text('GitHub登陆')
            .fontSize(17)
        }
        .width('50%')
        .justifyContent(FlexAlign.SpaceAround)
        .backgroundColor('#00CEF9')
        .borderRadius(20)
        .onClick(() => {
          //TODO：跳转Git
        })
      }
      .margin({ top: 50 })
    }
    .width('100%')
    .height('100%')
    .backgroundImage($r('app.media.bg'))
    .backgroundImageSize({
      width: '100%',
      height: '100%'
    })
  }

  //登陆请求
  Login() {
    Httptool.post("", this.user, (data: http.HttpResponse) => {
      console.info('Message:' + data.result['msg']);
      console.info('Operate:' + data.result['operate']);
      console.info('Nickname:' + data.result['nickname']);
    })
  }
}

