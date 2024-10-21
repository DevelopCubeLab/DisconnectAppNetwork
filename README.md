# DisconnectAppNetwork
iOS Tweaks disconnect application network.  
If you use CH/A model devices you can use iOS settings to manager application network. This tweak is for other devices.  
**⚠️Not all applications are supported.**  
**NO ANY alert or notification, just disconnect the network.**

Zh:  
iOS插件 断开应用网络连接
解决某些单机游戏太多广告影响游戏体验，在我生气的情况下开发了这个插件。  
如果您使用CH/A型设备，您可以使用iOS设置来管理应用程序网络。这个插件是为其他设备准备的。  
**⚠️并非所有应用程序都受支持。**  
**没有任注入成功提示或通知，直接断开注入的目标应用网络。**  

## Build
1. Download [Theos](https://theos.dev/)
2. run `make package` if you want to build rootless version run `make package THEOS_PACKAGE_SCHEME=rootless`

## Usage
1. Download the `DisconnectAppNetwork.dylib` file from [Releases](https://github.com/DevelopCubeLab/DisconnectAppNetwork/releases) page.
2. Suggest use [TrollFools](https://github.com/Lessica/TrollFools) to inject to you want to tweak application.
3. You can also use [ESign](https://esign.yyyue.xyz/) or [qnq](https://sign.drnrt8.cn/sign/) or [Sideloadly](https://sideloadly.io/) or [AltStore](https://altstore.io/) to inject the `.dylib` file.
4. Enjoy it. If you want to restore the application network, just eject this dylib.

Zh:  
1. 从[Releases](https://github.com/DevelopCubeLab/DisconnectAppNetwork/releases)页面下载`DisconnectAppNetwork.dylib`文件。
2. 建议使用[TrollFools](https://github.com)注入到您想要调整的应用程序。
3. 您还可以使用[轻松签](https://esign.yyyue.xyz/)或[全能签](https://sign.drnrt8.cn/sign/)或[Sideloadly](https://sideloadly.io/)或[AltStore](https://altstore.io/)来注入`.dylib`文件。
4. 尽情享受。如果您想恢复App的网络，请将此dylib移除注入即可。

## License
Apache License 2.0

## Thanks
Powered by ChatGPT 4o
