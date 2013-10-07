# Font屌 中文图标字体
可用于 Web 和 iOS 应用的中文图标字体，同时提供了国内各种常用网站、应用的徽标 SVG 源文件。

详见: [http://lexrus.github.io/fontdiao/](http://lexrus.github.io/fontdiao/)

![](https://raw.github.com/lexrus/fontdiao/master/assets/fontdiao_iphone.jpg)

## 使用方法
### Web
```
<i class="icon-douban"></i>
```
搞前端的小伙伴应该都明白，用过 [FontAwesome](http://fortawesome.github.io/Font-Awesome/) 或者 [Fontello](http://fontello.com) 的更加不用多说。


### iOS

* 手工安装需要将 __fontdiao/ios/FontDiao__ 整个目录复制到你的项目中，再 ```#import "FontDiao.h"``` 即可。
* 如果你使用 [CocoaPods](http://cocoapods.org)，在 Podfile 中 加上：
```pod 'FontDiao', :podspec => 'https://raw.github.com/lexrus/fontdiao/master/FontDiao.podspec'```
* ```pod install``` 安装 Font屌 到你的 workspace
* ```#import <FontDiao/FontDiao.h>``` 导入头文件后即可使用。

iOS 版本目前实现了 UIImageView 和 UIButton 的 category，用起来非常简单，例： ```self.imageView1.icon = FDIconTmall;```。枚举的实现参考了 [ios-fontawesome](https://github.com/alexdrone/ios-fontawesome)，但是没有用 subclass 而是用 category 是为了提高兼容性，可以与其它第三方库共存。

__fontdiao/ios/FontDiaoDemo__ 这个项目演示了如何使用 Font屌。


## 更多 SVG !!!
欢迎你在 [issues](https://github.com/lexrus/fontdiao/issues?state=open) 里提出加入新的 svg 文件的要求。如果你只能提供位图，我只能抽空把它转成 svg，通常这样比较费时间，所以我建议你先用 Illustrator、iDraw、Inkscape 等工具自己做。但无论怎样，我都将非常感谢你的贡献。


## 重新生成
你需要:

* Ruby 2.0.0p247 (当然 1.9.x 以上应该都可以)
* FontForge
* [FontCustom](http://fontcustom.com)

这三个东西在 Mac 上用 [Homebrew](http://brew.sh) 非常好装:

* ```brew install fontforge ttfautohint``` 装上 FontForge 和 TTFAutoHint
* ```brew install rbenv && brew install ruby-build``` 安装 rbenv
* ```rbenv install 2.0.0-p247 && rbenv global 2.0.0-p247``` 装上 Ruby 2 并设置为全局版本
* ```gem install fontcustom``` 搞定

在项目根目录运行 ```rake``` 命令就能用 SVG 生成所有需要的文件了。


## 资助
维护这些 SVG 是个体力活，如果你在工作中用到了这个项目，那就 [请我喝一杯咖啡吧](http://me.alipay.com/lexrus)。


## 商标法
请参考 [商标法](http://baike.baidu.com/view/77684.htm) 第七章对商标的使用权的解释，避免违法使用他人商标。


## LICENSE

##### Font屌 的 SVG、字体、CSS、HTML 遵循 WTFPL 协议
```
            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
                    Version 2, December 2004

 Copyright (C) 2004 Sam Hocevar <sam@hocevar.net>

 Everyone is permitted to copy and distribute verbatim or modified
 copies of this license document, and changing it is allowed as long
 as the name is changed.

            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

  0. You just DO WHAT THE FUCK YOU WANT TO.

```


##### Font屌 的 iOS 源码遵循 MIT 协议

```
The MIT License (MIT)
Copyright © 2013 Lex Tang, http://LexTang.com

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the “Software”), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
```
