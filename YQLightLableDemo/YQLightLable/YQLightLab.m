//
//  YQLightLab.m
//  testLightLable
//
//  Created by problemchild on 2017/7/19.
//  Copyright © 2017年 FreakyYang. All rights reserved.
//

#import "YQLightLab.h"

@interface YQLightLable ()

@property(nonatomic,strong)CAGradientLayer *lightLayer;

@property(nonatomic,strong)CABasicAnimation *animation;

@end

@implementation YQLightLable

-(instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    
    self.UILable = [[UILabel alloc]initWithFrame:self.bounds];
    [self addSubview:self.UILable];
    
    [self defaultSetting];
    
    [self LoadAboutLayer];
    
    return  self;
}

-(void)defaultSetting{
    self.textColor    = [UIColor darkGrayColor];
    self.lightColor   = [UIColor whiteColor];
    self.LightWidth   = 25;
    self.DurationTime = 2;
    self.repeatCount  = MAXFLOAT;
    self.direction    = YQLightLableDirectionToRight;
}

-(void)LoadAboutLayer{
    if(self.frame.size.width!=0 &&
       self.frame.size.height!=0){
        [self setUpLayer];
        [self setUpAnimation];
    }
}

-(void)setUpLayer{
    if(!self.lightLayer){
        self.lightLayer = [CAGradientLayer new];
    }else{
        [self.lightLayer removeFromSuperlayer];
    }
    self.lightLayer.frame  = self.bounds;
    if(self.textColor && self.lightColor){
        self.lightLayer.colors = @[(id)self.self.textColor.CGColor,
                                   (id)self.self.lightColor.CGColor,
                                   (id)self.self.textColor.CGColor];
    }else if(self.textColor){
        self.lightLayer.colors = @[(id)self.self.textColor.CGColor,
                                   (id)self.self.textColor.CGColor,
                                   (id)self.self.textColor.CGColor];
    }
    
    self.lightLayer.mask = self.UILable.layer;
    [self.layer addSublayer:self.lightLayer];
}

-(void)setUpAnimation{
    CGFloat rait = [self calculationWidth];
    
    if(!self.animation){
        self.animation = [CABasicAnimation new];
    }else{
        [self.lightLayer removeAllAnimations];
    }
    [self SetUpDirectionWithRait:rait];
    self.animation.keyPath     = @"locations";
    self.animation.duration    = self.DurationTime;
    self.animation.repeatCount = self.repeatCount;
    [self.lightLayer addAnimation:self.animation forKey:nil];
}

-(CGFloat)calculationWidth{
    return self.LightWidth/self.bounds.size.width;
}

-(void)SetUpDirectionWithRait:(CGFloat )rait
{
    switch (self.direction) {
        case YQLightLableDirectionToUp:
        {
            self.lightLayer.startPoint = CGPointMake(0, 0);
            self.lightLayer.endPoint   = CGPointMake(0, 1);
            self.lightLayer.locations = @[[NSNumber numberWithFloat:(-1.0*rait*2)],
                                          [NSNumber numberWithFloat:(-1.0*rait)],
                                          @0.0];
            self.animation.toValue = @[[NSNumber numberWithFloat:(-1.0*rait*2)],
                                         [NSNumber numberWithFloat:(-1.0*rait)],
                                         @0.0];
            self.animation.fromValue   = @[@1,
                                         [NSNumber numberWithFloat:(1+rait)],
                                         [NSNumber numberWithFloat:(1+rait*2)]];
        }
            break;
        case YQLightLableDirectionToDown:
        {
            self.lightLayer.startPoint = CGPointMake(0, 0);
            self.lightLayer.endPoint   = CGPointMake(0, 1);
            self.lightLayer.locations = @[@1,
                                          [NSNumber numberWithFloat:(1+rait)],
                                          [NSNumber numberWithFloat:(1+rait*2)]];
            self.animation.fromValue = @[[NSNumber numberWithFloat:(-1.0*rait*2)],
                                         [NSNumber numberWithFloat:(-1.0*rait)],
                                         @0.0];
            self.animation.toValue   = @[@1,
                                         [NSNumber numberWithFloat:(1+rait)],
                                         [NSNumber numberWithFloat:(1+rait*2)]];
        }
            break;
        case YQLightLableDirectionToLeft:
        {
            self.lightLayer.startPoint = CGPointMake(0, 0);
            self.lightLayer.endPoint   = CGPointMake(1, 0);
            self.lightLayer.locations = @[@1,
                                          [NSNumber numberWithFloat:(1+rait)],
                                          [NSNumber numberWithFloat:(1+rait*2)]];
            self.animation.toValue = @[[NSNumber numberWithFloat:(-1.0*rait*2)],
                                         [NSNumber numberWithFloat:(-1.0*rait)],
                                         @0.0];
            self.animation.fromValue   = @[@1,
                                         [NSNumber numberWithFloat:(1+rait)],
                                         [NSNumber numberWithFloat:(1+rait*2)]];
        }
            break;
        case YQLightLableDirectionToRight:
        {
            self.lightLayer.startPoint = CGPointMake(0, 0);
            self.lightLayer.endPoint   = CGPointMake(1, 0);
            self.lightLayer.locations = @[[NSNumber numberWithFloat:(-1.0*rait*2)],
                                          [NSNumber numberWithFloat:(-1.0*rait)],
                                          @0.0];
            self.animation.fromValue = @[[NSNumber numberWithFloat:(-1.0*rait*2)],
                                         [NSNumber numberWithFloat:(-1.0*rait)],
                                         @0.0];
            self.animation.toValue   = @[@1,
                                         [NSNumber numberWithFloat:(1+rait)],
                                         [NSNumber numberWithFloat:(1+rait*2)]];
        }
            break;
        default:
            break;
    }
}

-(void)setFrame:(CGRect)frame{
    [super setFrame:frame];
    self.UILable.frame = self.bounds;
    [self LoadAboutLayer];
}

-(void)setTextColor:(UIColor *)textColor{
    _textColor = textColor;
    [self LoadAboutLayer];
}
-(void)setLightColor:(UIColor *)lightColor{
    _lightColor = lightColor;
    [self LoadAboutLayer];
}
-(void)setLightWidth:(CGFloat)LightWidth{
    _LightWidth = LightWidth;
    [self LoadAboutLayer];
}
-(void)setDurationTime:(CFTimeInterval)DurationTime{
    _DurationTime = DurationTime;
    [self LoadAboutLayer];
}
-(void)setRepeatCount:(float)repeatCount{
    _repeatCount = repeatCount;
    [self LoadAboutLayer];
}
-(void)setDirection:(YQLightLableDirection)direction{
    _direction = direction;
    [self LoadAboutLayer];
}


-(void)setText:(NSString *)text{
    _text = text;
    self.UILable.text = text;
}
-(void)setFont:(UIFont *)font{
    _font = font;
    self.UILable.font = font;
}
-(void)setTextAlignment:(NSTextAlignment)textAlignment{
    _textAlignment = textAlignment;
    self.UILable.textAlignment = textAlignment;
}
-(void)setNumberOfLines:(NSInteger)numberOfLines{
    _numberOfLines = numberOfLines;
    self.UILable.numberOfLines = numberOfLines;
}
-(void)setLineBreakMode:(NSLineBreakMode)lineBreakMode{
    _lineBreakMode = lineBreakMode;
    self.UILable.lineBreakMode = lineBreakMode;
}
-(void)setAttributedText:(NSAttributedString *)attributedText{
    _attributedText = attributedText;
    self.UILable.attributedText = attributedText;
}
-(void)setAdjustsFontSizeToFitWidth:(BOOL)adjustsFontSizeToFitWidth{
    _adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth;
    self.UILable.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth;
}

@end
