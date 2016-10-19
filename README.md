# DEMO_VIPER
This is a demo of VIPER architecture.

# APP的典型数据流向  
 - API获取原始数据 -> 数据存储（本地，内存） -> 数据加工 -> 数据呈现  
 - 用户操作数据 -> 数据存储（本地，内存） -> 数据提交给API
 - 用户操作数据 -> 数据呈现

---
# VIPER
##### 数据流向  

![VIPER](http://upload-images.jianshu.io/upload_images/2309182-cbaca6ac18fba77b.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

###### 角色职责：
 - View：用户界面，接收用户操作。
 - Interactor：处理业务逻辑，更新数据。  
 - Presenter：提供页面需要呈现的数据，页面显示的逻辑。
 - Entity：提供业务的基础数据。
 - Router：负责页面转场。

###### 角色关系：  
 - View -> Presenter：
  + Presenter向View提供加工过的，满足View展示需求的数据。
  + 同时View把接收到的用户action交给Presenter处理。
  + View的显示逻辑一定是从Presenter的状态当中得到的。
 - Presenter -> Interactor：
  + Presenter利用Interactor提供的数据，用于生成View需要展示的数据。
  + Presenter可以要求Interactor更新数据（向API发送请求）。
 - Presenter -> Router：
  + Presenter可以要求Router跳转页面。
 - Interactor -> Entity：
  + Interactor对Entity的获取方法提供封装（从本地获取或者从API获取）。

###### 数据流：
 - Interactor -> Presenter -> View
  + 从interactor中取出原始的数据，进过Presenter的加工，交给View来显示。
 - View -> Presenter -> Interactor
  + View接收到用户的操作，将操作交给Presenter处理，Presenter交给Interactor更新相应的数据。
 - View -> Presenter -> View
  + 当View接收到用户的操作，交给Presenter处理。Presenter更新本地相应数据，得到更新的状态。然后更新View。
  + 这种数据流中，最容易出现的问题是直接从View的action，更新了View的显示状态，但是在Presenter当中并没有体现出来。
