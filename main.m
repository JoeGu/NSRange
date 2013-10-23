//
//  main.m
//  NSRange
//
//  Created by Joe Gu on 13-5-20.
//  Copyright (c) 2013年 Joe Gu. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    /*
     
     typedef struct _NSRange
     {
     NSUInteger location;
     NSUInteger lenth;
     }NSRange;
     
     typedef unsigned long NSUInteger;
     
     typedef unsigned int NSUInteger;
     
     */
    
    /////////////////////////////////////// 通过对象长度输出字符串
    NSString *gmqName=@"My Name is gumengqi oh yeah";
    
    NSRange iRange=NSMakeRange(11, 8);
    
    NSLog(@"%@",[gmqName substringWithRange:iRange]);// 11th
    
    ///////////////////////////////////////  搜索字符串
    NSString *igmqName=@"My Name is gumengqi oh yeah";
    
    NSRange gRange=[igmqName rangeOfString:@"gumengqi oh yeah"];//16
    
    if (gRange.length>0)
    {
        NSLog(@"1st Range is %@",NSStringFromRange(gRange));//16
    }
    
    ///////////////////////////////////////   从后向前反向搜索字符串
    NSString *ngmqName=@"My Name is gumengqi oh yeah";//20th
    
    NSRange nRange=[ngmqName rangeOfString:@"oh" options:NSBackwardsSearch];
    
    if (nRange.length>0)
    {
        NSLog(@"2nd Range is %@",NSStringFromRange(nRange));//20th 2
    }
    
    ///////////////////////////////////////   获取一个字符串或者一个数组中的一个子集
    
    //NSRange定义
    //Declaration:
    typedef struct _NSRange
    {
        NSUInteger location;
        NSUInteger length;
    } NSRange;
    
    //创建NSRange的方法定义
    //Declaration:
    /*NSRange NSMakeRange
     (
     NSUInteger loc,
     NSUInteger len
     );
     */
    //例如获取一个数组的一个子集：
    
    
    
    //NSRange newRange = NSMakeRange(0, 5);
    //NSArray *subArray = [self.states subarrayWithRange:newRange];
    
    //这样就获得了这个数组中0开始的5个元素的子集
    
    return 0;
}

