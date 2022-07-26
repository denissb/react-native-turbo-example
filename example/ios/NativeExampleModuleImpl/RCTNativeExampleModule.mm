//
//  RCTNativeExampleModule.m
//  TurboModuleSampleProject
//
//  Created by Daniel Friyia on 2022-06-18.
//

#import <Foundation/Foundation.h>

#include "RCTNativeExampleModule.h"

@implementation NativeExampleModule

RCT_EXPORT_MODULE()

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const facebook::react::ObjCTurboModule::InitParams &)params {
  return std::make_shared<facebook::react::NativeExampleModuleSpecJSI>(params);
}

- (NSString *)getGreeting:(NSString *)name {
  return [NSString stringWithFormat:@"Greetings from %@ !", name];
}

@end
