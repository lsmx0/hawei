import { router } from "@kit.ArkUI"

@Component
export default struct HomePage {
  build() {
    Column() {
      Button('门锁').onClick(()=>{
        router.pushUrl({
          url:'pages/routingData/mensuo'
        })
      })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#66d0c5c5')
  }
}