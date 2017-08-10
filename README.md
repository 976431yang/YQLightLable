# YQLightLable

#### 微博：畸形滴小男孩
##### 闪光Lable（可模拟iphone解锁效果）

### 效果预览：</br>
 ![image](https://github.com/976431yang/YQLightLable/blob/master/YQLightLableDemo/Screenshot/2017-07-20-10_24_41.gif)

-直接拖到工程中使用
```objective-c
#import "YQLightLab.h"
```
### Example Code:
#### 最简单使用(默认效果)：
```objective-c
- (void)viewDidLoad {
    [super viewDidLoad];
    //把背景颜色调暗一些便于查看效果。
    self.view.backgroundColor = [UIColor darkGrayColor];

    //像普通Lable一样，创建YQLightLable
    YQLightLable *lab = [[YQLightLable alloc]init];
    lab.frame = CGRectMake(0, 50, self.view.frame.size.width, 25);
    lab.text = @"显示的文字，显示的文字，显示的文字，显示的文字，显示的文字，";

    //像普通Lable一样加载显示
    [self.view addSubview:lab];
}
```

#### 自定义效果：
```objective-c
	
	//文字颜色
	lab.textColor
	//光束颜色
	lab.lightColor
	//动画时间（控制速度）
	lab.DurationTime
	//光束宽度
	lab.LightWidth
	//动画重复次数(默认最大)
	lab.repeatCount
	//动画方向--向右（默认）
	lab.direction = YQLightLableDirectionToRight;
	//向左
	lab.direction = YQLightLableDirectionToLeft;
	//向上
	lab.direction = YQLightLableDirectionToUp;
	//向下
	lab.direction = YQLightLableDirectionToDown;
```

#### UILable常用设置
##### 以下属性，可以直接设置：
```objective-c
	lab.text
	lab.font
	lab.textAlignment
	lab.numberOfLines
	lab.lineBreakMode
	lab.attributedText
	lab.adjustsFontSizeToFitWidth
```
##### 更多UILable的设置，请访问“.UILable”属性进行设置：
```objective-c
	lab.UILable.enabled ....
```

- 说明：建议不要修改 “.UILable.textColor”属性，可能会对效果造成影响。需要更改颜色，请直接更改“.textColor”属性