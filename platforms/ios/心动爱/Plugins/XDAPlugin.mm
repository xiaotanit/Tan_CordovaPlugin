//
//  XDAPlugin.m
//  心动爱
//
//  Created by PX_Tan on 16/2/1.
//
//

#import "XDAPlugin.h"
#import "AppDelegate.h"
#import "MainViewController.h"

@interface XDAPlugin ()

@end

@implementation XDAPlugin

/*
 Ping++ 支付: wx,alipay,upacp,bfb (微信、支付宝、银联、百度钱包)
 */
- (void)pay:(CDVInvokedUrlCommand*)command{
   // NSUInteger paramsCount = [command.arguments count];
    NSString *errorInfo = @"";
    
//    if (paramsCount < 4){
//        errorInfo = @"请传入有效的参数";
//    }
    
    if (errorInfo.length > 0) {
        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:errorInfo];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
        return;
    }
    
    NSString *orderId = [command.arguments objectAtIndex:0];  //传入的第一个参数
    NSString *payWay = [command.arguments objectAtIndex:1]; //传入的第二个参数
    NSLog(@"order: %@, payway: %@", orderId, payWay);
    //.....
    
    NSString *str = [NSString stringWithFormat:@"哈哈，oder: %@, payway: %@", orderId, payWay];
    
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:str];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

//获取设备类型
- (void)getDeviceType:(CDVInvokedUrlCommand*)command{
    NSString *stringToReturn = ISIPHONE4 ? @"4" : ISIPHONE5 ? @"5" : ISIPHONE6 ? @"6" : ISIPHONE6S ? @"6S" : @"";
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:stringToReturn];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
