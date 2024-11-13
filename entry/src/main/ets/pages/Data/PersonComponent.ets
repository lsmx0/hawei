export class PersonData {
  static PersonCard: PersonComponent[] = [
    { icon: $r('app.media.xiaoxi'), text: '消息通知' },
    { icon: $r('app.media.jiating'), text: '家庭管理',link:'pages/routingData/HomeManagement' },
    { icon: $r('app.media.fenxiang'), text: '设备分享' ,link:'pages/routingData/DeviceSharing'},
    { icon: $r('app.media.xiaozujian'), text: '小组件',link:'pages/routingData/Widget' },
    { icon: $r('app.media.bangzhu'), text: '帮助中心' ,link:'pages/routingData/HelpCenter'},
    { icon: $r('app.media.shezhi'), text: '更多',link:'pages/routingData/MoreSettings' },


  ]
}

export interface PersonComponent {
  icon: Resource
  text: string
  link?:string
}