export class mensuoText{
  static msg:msg[]=[
    {title:'锁具实时状态',state:'CLOSE'},
    {title:'音量调节',state:'50'},
    {title:'常开模式',state:'CLOSE'},
    {title:'门锁重置',state:'CLOSE'},
    {title:'语言设置',state:'简体中文'},
    {title:'电池电量',state:'95%'},
    {title:'开锁钥匙编号',state:'123456'},
    {title:'钥匙管理',state:'无操作'},
    {title:'管理钥匙ID',state:'789456'},
    {title:'临时密码有效次数',state:'5'},
    {title:'远程开锁模式',state:'TURN'},
    {title:'远程一键开锁',state:'TURN'},
    {title:'报警消息提示',state:'8'},
    {title:'钥匙总量',state:'4'},
    {title:'钥匙同步',state:'TURN'},
    {title:'同步是否完成',state:'TURE'},
  ]
}
export interface msg{
  title:string
  state:string
  icon?:Resource
}