# miniapp_demo

A new Flutter project.

## prepare
### 开发环境
#### Device:
**Mac os 11.5.2**

#### Dev Tool:
**IntelliJ IDEA Ultimate Edition version 2021.2 (或Android Studio)**

#### Version:
**Flutter version 2.5.3**  
**Dart version 2.14.4**

[flutter官网下载](https://docs.flutter.dev/get-started/install)
(Flutter从v2开始已经自带嵌入Dart，无需单独下载)

下载安装完成后，控制台输入命令检查版本
`flutter --version`
```shell
╔════════════════════════════════════════════════════════════════════════════╗
║ A new version of Flutter is available!                                     ║
║                                                                            ║
║ To update to the latest version, run "flutter upgrade".                    ║
╚════════════════════════════════════════════════════════════════════════════╝


Flutter 2.5.3 • channel stable • https://github.com/flutter/flutter.git
Framework • revision 18116933e7 (4 months ago) • 2021-10-15 10:46:35 -0700
Engine • revision d3ea636dc5
Tools • Dart 2.14.4
```

配置环境变量
`vi ~/.bash_profile`
```shell
#android sdk
export ANDROID_HOME=/Users/username/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
#flutter sdk
export FLUTTER_HOME=//Users/username/Downloads/software/flutter
export PATH=$PATH:$FLUTTER_HOME/bin
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
#dart sdk
export DART_HOME=$FLUTTER_HOME/bin/cache/dart-sdk
export PATH=$PATH:$DART_HOME/bin
```
使环境变量立即生效
`source ~/.bash_profile`

检查环境是否正确
`flutter doctor`
```shell
Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel stable, 2.5.3, on macOS 11.5.2 20G95 darwin-x64, locale zh-Hans-CN)
[✓] Android toolchain - develop for Android devices (Android SDK version 31.0.0)
[✓] Xcode - develop for iOS and macOS
[✓] Chrome - develop for the web
[✓] Android Studio (version 2020.3)
[✓] IntelliJ IDEA Ultimate Edition (version 2021.2)
[✓] Connected device (1 available)

• No issues found!

```

*IDE提示找不到JDK解决方法：*
```shell
Android Studio Unable to find bundled Java version

cd /Applications/Android\ Studio.app/Contents/jre
ln -s ../jre jdk
ln -s "/Library/Internet Plug-Ins/JavaAppletPlugin.plugin" jdk
flutter doctor -v
```
### 配置sdk

**Dev Tool - Preferences - Languages&Frameworks - Flutter**
```markdown
example:
/Users/username/env/flutter
Flutter 2.5.3 • channel stable • https://github.com/flutter/flutter.git
```

**Dev Tool - Preferences - Languages&Frameworks - Dart**
```markdown
example:
/Users/username/env/flutter/bin/cache/dart-sdk
2.14.4
```
*---如果某些特定情况下需要切换Flutter版本，可自行下载多个版本，使用该脚本切换：*
```shell
#!/bin/sh

rm -rf ~/env/flutter
cd ~/env || exit

if [ ! -d "flutter" ]; then
  mkdir flutter
else
  echo dir exist
  exit
fi
cp -r ~/env/flutter_2.5.3/ ~/env/flutter/
```