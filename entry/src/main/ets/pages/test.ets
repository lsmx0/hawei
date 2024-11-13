
import { http } from "@kit.NetworkKit"
import { Httptool } from "./tools/Httptool"

//测试接入华为云设备数据
@Component
export struct test {
  @State temperature:string=''
  private endpoint:string='fcdda8582d.st1.iotda-app.cn-east-3.myhuaweicloud.com'
  private project_id:string='f170a3af6a5a47788d41bb410c8aa8fc'
  private device_id:string='000111'
  private url='https://'+this.endpoint+'/v5/iot/'+this.project_id+'/devices/'+this.device_id+'/shadow'
  aboutToAppear(): void {
    Httptool.get(this.url,(data:http.HttpResponse)=>{
console.log('shadow-Data:',JSON.stringify(data.result))
    })
  }


  build() {
    Text('温度'+this.temperature)
  }
}
