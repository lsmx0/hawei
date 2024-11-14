export class HomeData{
  static homedata:Home[]=[
    {icon:$r('app.media.chazuo'),text:'智能插座'},
    {icon:$r('app.media.mianban'),text:'控制面板'},
    {icon:$r('app.media.deng'),text:'灯'},
    {icon:$r('app.media.menlian'),text:'智能床帘'},
    {icon:$r('app.media.reshuiqi'),text:'热水器'},
    {icon:$r('app.media.kongtiao'),text:'空调'},
    {icon:$r('app.media.xiaoai'),text:'小爱'},
    {icon:$r('app.media.saodi'),text:'扫地机'},
    {icon:$r('app.media.luyouqi'),text:'路由器'},
    {icon:$r('app.media.xiyiji'),text:'洗衣机'},
    {icon:$r('app.media.chushiqi'),text:'除湿器'},
  ]
}
export interface Home{
  icon:Resource
  text:string
}