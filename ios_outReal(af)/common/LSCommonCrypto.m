//
//  Md5.m
//  SmileGames
//
//  Created by lessu on 13-12-13.
//  Copyright (c) 2013年 lessu. All rights reserved.
//

#import "LSCommonCrypto.h"
#import <CommonCrypto/CommonDigest.h>

@implementation LSCommonCrypto
//md5 32位 加密 （小写）
+ (NSString *)md5:(NSString *)str {
    const char *cStr = [str UTF8String];
    unsigned char result[16];    CC_MD5( cStr, strlen(cStr), result);  

    return [NSString stringWithFormat:  
            @"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",  
            result[0], result[1], result[2], result[3],  
            result[4], result[5], result[6], result[7],  
            result[8], result[9], result[10], result[11],  
            result[12], result[13], result[14], result[15]  
            ];  

}
@end

