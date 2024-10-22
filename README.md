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
3. You can also use [ESign](https://esign.yyyue.xyz/) or [qnq](https://sign.drnrt8.cn/sign/) or [Sideloadly](https://sideloadly.io/) or [AltStore](https://altstore.io/) to inject the `DisconnectAppNetwork.dylib` file.
4. Enjoy it. If you want to restore the application network, just eject this dylib.

Zh:  
1. 从[Releases](https://github.com/DevelopCubeLab/DisconnectAppNetwork/releases)页面下载`DisconnectAppNetwork.dylib`文件。
2. 建议使用[TrollFools](https://github.com)注入到您想要调整的应用程序。
3. 您还可以使用[轻松签](https://esign.yyyue.xyz/)或[全能签](https://sign.drnrt8.cn/sign/)或[Sideloadly](https://sideloadly.io/)或[AltStore](https://altstore.io/)来注入`DisconnectAppNetwork.dylib`文件。
4. 尽情享受。如果您想恢复App的网络，请将此dylib移除注入即可。

## Tested inject Application
I test the application myself and can disconnect from the network.  

**Support ✅**
- [Marble Master](https://apps.apple.com/app/id1573755134) Version 10.112.182
- [Paper Boy Race: Running game](https://apps.apple.com/app/id1487826356) Version 1.38.16
- [find differences search spot](https://apps.apple.com/app/id1579287385) Version 3.34
- [subway-surfers](https://apps.apple.com/app/id512939461) (TrollFools inject need decrypting IPA first) Version 3.36.2

**Not Support ❌**
- [WeChat](https://apps.apple.com/app/id414478124) Still can connect to the network
- qnq(`qnq.nuosike.sign`) Application crash and eject the dylib application data will be lost!⚠️

Zh:
我自己测试的应用程序，可以断开网络连接。  

**支持 ✅**
- [Marble Master](https://apps.apple.com/app/id1573755134) 版本 10.112.182
- [Paper Boy Race: Running game](https://apps.apple.com/app/id1487826356) 版本 1.38.16
- [find differences search spot](https://apps.apple.com/app/id1579287385) 版本 3.34
- [subway-surfers](https://apps.apple.com/app/id512939461) (TrollFools注入需要先解密IPA) 版本 3.36.2

**不支持 ❌**
- [WeChat](https://apps.apple.com/app/id414478124) 仍然可以连接到网络
- 全能签(`qnq.nuosike.sign`) 应用程序崩溃，移除dylib后应用程序数据将丢失！⚠️

## License
Apache License 2.0

## Thanks
Powered by ChatGPT 4o
