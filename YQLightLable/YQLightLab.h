//
//  YQLightLab.h
//  testLightLable
//
//  Created by problemchild on 2017/7/19.
//  Copyright © 2017年 FreakyYang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YQLightLable : UIView

//字体颜色--默认深灰色--必须在YQLightLable层设置
@property(nonatomic,strong)UIColor * _Nullable textColor;

//光束颜色--默认白色
@property(nonatomic,strong)UIColor * _Nullable lightColor;

//光束宽度--默认25
@property (nonatomic,assign) CGFloat        LightWidth;

//动画时间--默认2秒
@property (nonatomic,assign) CFTimeInterval DurationTime;

//重复次数--默认最大
@property (nonatomic,assign) float          repeatCount;

//光束方向集合
typedef NS_ENUM(NSInteger, YQLightLableDirection){
    //向上
    YQLightLableDirectionToUp,
    //向下
    YQLightLableDirectionToDown,
    //向左
    YQLightLableDirectionToLeft,
    //向右
    YQLightLableDirectionToRight
};

//方向设置，默认向右
@property (nonatomic,assign)YQLightLableDirection direction;

//Lable常用设置
@property (nonatomic,strong) NSString * _Nullable text;
@property (nonatomic,strong) UIFont   * _Nullable font;
@property (nonatomic) NSTextAlignment textAlignment;
@property (nonatomic) NSInteger       numberOfLines;
@property (nonatomic) NSLineBreakMode lineBreakMode;
@property (nullable, nonatomic) NSAttributedString *attributedText;
@property(nonatomic) BOOL adjustsFontSizeToFitWidth;

//更多关于Lable的详细设置，请使用UILable属性进行设置
@property (nonatomic,strong) UILabel * _Nullable UILable;

@end
