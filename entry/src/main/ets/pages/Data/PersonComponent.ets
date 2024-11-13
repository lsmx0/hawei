export class PersonData {
  static PersonCard: PersonComponent[] = [
    { icon: $r('app.media.jiating'), text: '家庭管理' },
    { icon: $r('app.media.fenxiang'), text: '设备分享' },
    { icon: $r('app.media.xiaozujian'), text: '小组件' },
    { icon: $r('app.media.bangzhu'), text: '帮助中心' },
    { icon: $r('app.media.shezhi'), text: '更多' },

  ]
}

export interface PersonComponent {
  icon: Resource
  text: string
}