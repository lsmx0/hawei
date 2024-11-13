import MyPage from './Person_center'
import HomePage from './Home_Page'

@Entry
@Component
struct main {
  //底部导航栏高亮显示自定义
  @State secondIndex: number = 0
  @Builder
  TabsStyle(itemIndex: number, title: string, icon: Resource) {
    Column() {
      Image(icon)
        .width(24)
        .fillColor(itemIndex == this.secondIndex ? '#00CEF9' : Color.Black)
      Text(title)
        .fontColor(itemIndex == this.secondIndex ? '#00CEF9' : Color.Black)
    }
  }

  build() {
    Column() {
      //页面切换
      Tabs({ barPosition: BarPosition.End }) {
        //首页
        TabContent() {
          Column() {
            HomePage()
          }
        }
        .tabBar(this.TabsStyle(0, '首页', $r('app.media.ic_zhuye')))

        //我的
        TabContent() {
          Column() {
            MyPage()
          }
          .width('100%')
        }
        .tabBar(this.TabsStyle(1, '我的', $r('app.media.person')))
      }
      .onChange((index: number) => {
        this.secondIndex = index
      })
      .scrollable(false)
      .animationDuration(0)
      .vertical(false)
    }

  }
}


