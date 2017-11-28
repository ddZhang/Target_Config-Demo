# Target_Config-Demo

工程中创建多个target，以及配置多个环境变量的demo
(使用单例管理环境变量，实现测试，预发，正式环境项目参数的灵活配置)

# 首先介绍如何创建多个target

1.新建target（File ——> New——>Target），新建后的目录如下
![](https://github.com/ddZhang/Target_Config-Demo/blob/master/Target-Demo/images/1.png)

2.如果需要共用一个AppDelegate，删除其中一个target的AppDelegate文件，并将剩下的AppDelegate文件关联两个target
![](https://github.com/ddZhang/Target_Config-Demo/blob/master/Target-Demo/images/2.png)
ps:如果不想共用一个，可以将文件改名，类似的需要共用的文件都要进行关联

3.对两个target做区别的处理（这里我将两个target分别命名为target1和target2）
![](https://github.com/ddZhang/Target_Config-Demo/blob/master/Target-Demo/images/3.png)

4.在控制器中简单测试一下
![](https://github.com/ddZhang/Target_Config-Demo/blob/master/Target-Demo/images/4.png)

#################################################

# 接下来介绍环境变量的配置

1.选中工程project -> info , 找到Configurations, 点击下方的“＋”（默认系统已经创建了Debug和Release，我们再创建一个Release test）
![](https://github.com/ddZhang/Target_Config-Demo/blob/master/Target-Demo/images/5.png)

2.为每个环境创建xcconfig文件，文件的APP_DISPLAY_NAME对应app显示的名字，CONFIG_FLAG标记对应的环境
![](https://github.com/ddZhang/Target_Config-Demo/blob/master/Target-Demo/images/6.png)

3.project -> info , Configurations为每个环境变量选择xcconfig文件
ps:target-new是上面的多个target，不需要的可忽略~~
![](https://github.com/ddZhang/Target_Config-Demo/blob/master/Target-Demo/images/7.png)

4.为需要配置多环境变量的target配置环境变量，注意：values中的名字和xcconfig中的CONFIG_FLAG对应的值保持一致
![](https://github.com/ddZhang/Target_Config-Demo/blob/master/Target-Demo/images/8.png)

# 到这里环境变量的配置就完成了，具体如何使用就要看项目的需求了，推荐大家使用单例来管理~~~~~~~~~
![](https://github.com/ddZhang/Target_Config-Demo/blob/master/Target-Demo/images/9.png)
