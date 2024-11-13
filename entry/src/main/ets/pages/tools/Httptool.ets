import { http } from "@kit.NetworkKit";
import { BusinessError } from "@kit.BasicServicesKit";

export class Httptool {


  static get(url: string,  fn: Function) {
    // 每一个httpRequest对应一个HTTP请求任务，不可复用
    let httpRequest = http.createHttp();

    let options: http.HttpRequestOptions = {
      method: http.RequestMethod.GET, // 可选，默认为http.RequestMethod.GET
      expectDataType: http.HttpDataType.OBJECT, // 可选，指定返回数据的类型
      header: { 'Accept': 'application/json' },
    }
    httpRequest.request(url, options, (err: BusinessError, data: http.HttpResponse) => {
      if (!err) {
        fn(data)
      } else {
        console.info('error:'+JSON.stringify(err));
      }
      httpRequest.destroy();
    });
  }


  static post(url: string, param: string | Object | ArrayBuffer, fn: Function) {
    // 每一个httpRequest对应一个HTTP请求任务，不可复用
    let httpRequest = http.createHttp();

    let options: http.HttpRequestOptions = {
      method: http.RequestMethod.POST, // 可选，默认为http.RequestMethod.GET
      // 当使用POST请求时此字段用于传递请求体内容，具体格式与服务端协商确定
      extraData: param,
      expectDataType: http.HttpDataType.OBJECT, // 可选，指定返回数据的类型
      header: { 'Accept': 'application/json' },
    }
    httpRequest.request(url, options, (err: BusinessError, data: http.HttpResponse) => {
      if (!err) {
        fn(data)
      } else {
        console.info('error:'+JSON.stringify(err));
      }
      httpRequest.destroy();
    });
  }
}