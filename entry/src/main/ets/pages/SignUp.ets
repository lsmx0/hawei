import { router } from '@kit.ArkUI'

interface Sign {
  name: string
  password: string
}

@Entry
@Component
struct SignUp {
  @State sign: Sign = {
    name: '',
    password: ''
  }

  build() {
    Column({ space: 10 }) {
      Row() {
        Image($r('app.media.xmark'))
          .width(30)
          .onClick(() => {
            router.back()
          })
      }
      .width('90%')

      //文字显示
      Column({ space: 5 }) {
        Text('Hello!')
          .width('100%')
          .fontSize(40)
          .margin({ left: 60 })
        Text('欢迎注册Smart Access Control')
          .fontSize(20)
      }
      .width('95%')
      .margin({ top: 60 })

      //注册框
      Column({ space: 10 }) {
        TextInput({ placeholder: '请输入用户名/手机号', text: $$this.sign.name })
          .width(300)
          .backgroundColor(Color.White)
        TextInput({ placeholder: '请输入密码：', text: $$this.sign.password })
          .width(300)
          .backgroundColor(Color.White)
          .type(InputType.Password)
        Button('注册')
          .width(150)
          .margin({ top: 30 })
          .onClick(() => {
            if (this.sign.name != '' && this.sign.password != '') {
              router.back()
            } else if(this.sign.name == '' && this.sign.password !=''){
              AlertDialog.show({
                message: '未输入用户名/手机号'
              })
            }
            else if(this.sign.name != '' && this.sign.password == '') {
              AlertDialog.show({
                message: '未输入密码'
              })
            }
            else{
              AlertDialog.show({
                message: '未输入信息'
              })
            }
          })
      }
      .width('100%')
      .margin({ top: 70 })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#00CEF9')
  }
}