# Egg_Tree 开发历程

##1、添加预编译头文件
new -> file -> Other -> PCH File
在工程的 building setting 中，Prefix Header 中，设置文件路径  （工程文件夹名）/目录名称/文件名称。

##2、添加多语言环境


 ![Gradient Example](https://raw.githubusercontent.com/walkertree/Egg_Tree/master/ReadMeImage/2.1.png)
 
* 添加完成后，选择文件

 ![Gradient Example](https://raw.githubusercontent.com/walkertree/Egg_Tree/master/ReadMeImage/2.2.png)
 
*  添加多语言类型，在工程文件中 ，添加不同的多语言文件
 
  ![Gradient Example](https://raw.githubusercontent.com/walkertree/Egg_Tree/master/ReadMeImage/2.3.png)
  
*  多语言添加完成。


* 在 info.plist 中，设置默认语言：
  ![Gradient Example](https://raw.githubusercontent.com/walkertree/Egg_Tree/master/ReadMeImage/2.4.png)
  
使用多语言的代码：

```
NSString *strPlay = NSLocalizedString(@"play",@"");
[self.btnPlay setTitle:strPlay forState:UIControlStateNormal];
```

设置 app 名称本地化： 
新建一个strings 文件，并且命名为： InfoPlist.strings
并且根据需要的国际化的语言，进行添加语言：
    ![Gradient Example](https://raw.githubusercontent.com/walkertree/Egg_Tree/master/ReadMeImage/2.5.png)
    
##3、添加 app 的图标和启动图片


![Gradient Example](https://raw.githubusercontent.com/walkertree/Egg_Tree/master/ReadMeImage/3.1.png)

￼
在 Assets.xcassets 中，添加相对应像素的分辨率即可。

