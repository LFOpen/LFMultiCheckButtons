# LFMultiCheckButtons
多选按钮组 <br/>
 ![image](https://github.com/LFOpen/LFMultiCheckButtons/raw/master/pics/pic1.png)

# Cocoapods集成
因为使用了私有库，所以需要同时指定私有库和公有cocoaPods库的地址
```
source 'https://github.com/LFModulizationDemo/PrivateRepo.git'
source 'https://github.com/CocoaPods/Specs.git'
use_frameworks!

target 'MainProject' do
  pod 'LFMultiCheckButtons'
end
```
