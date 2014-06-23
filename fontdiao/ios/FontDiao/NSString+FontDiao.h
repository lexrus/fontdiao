//
//  NSString+FontDiao.h
//  FontDiao
//
//  Created by Lex on 10/7/13.
//
//  The MIT License (MIT)
//  Copyright © 2013 Lex Tang, http://LexTang.com
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the “Software”), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import <Foundation/Foundation.h>

static NSString *const kFontDiaoFamilyName = @"fontdiao";

typedef NS_ENUM(NSInteger, FDIcon) {
    FDIcon360yunpan = 0,
    FDIcon58,
    FDIconAcer,
    FDIconAlibaba,
    FDIconAlipay,
    FDIconAsus,
    FDIconBaidu,
    FDIconBaiduyun,
    FDIconCctv,
    FDIconClover,
    FDIconCnbeta,
    FDIconCtrip,
    FDIconDangdang,
    FDIconDazhong,
    FDIconDianping,
    FDIconDianxin,
    FDIconDongfangweishi,
    FDIconDouban,
    FDIconFanfou,
    FDIconFangzheng,
    FDIconFeixin,
    FDIconFenghuangweishi,
    FDIconGanji,
    FDIconGongshangyinhang,
    FDIconJd,
    FDIconJiansheyinhang,
    FDIconJiaotongyinhang,
    FDIconJijia,
    FDIconKingsoft,
    FDIconKuandaishan,
    FDIconKx001,
    FDIconLetv,
    FDIconLiantong,
    FDIconLianxiang,
    FDIconMiliao,
    FDIconMop,
    FDIconPps,
    FDIconQq,
    FDIconQqyinyue,
    FDIconQzone,
    FDIconRenminyinhang,
    FDIconRenren,
    FDIconShanghaidianshitai,
    FDIconShanghaiyinhang,
    FDIconTaobao,
    FDIconTengxunweibo,
    FDIconTmall,
    FDIconTudou,
    FDIconV2ex,
    FDIconWangyi,
    FDIconWangyiweibo,
    FDIconWangyiyunyinyue,
    FDIconWechat,
    FDIconWeibo,
    FDIconWeifeng,
    FDIconXiami,
    FDIconXiaomi,
    FDIconXinyeyinhang,
    FDIconXunlei,
    FDIconYihaodian,
    FDIconYilong,
    FDIconYinlian,
    FDIconYixun,
    FDIconYoudao,
    FDIconYouku,
    FDIconYouzhen,
    FDIconZhaoshangyinhang,
    FDIconZhenai,
    FDIconZheshangyinhang,
    FDIconZhihusquare,
    FDIconZhihu,
    FDIconZhongguoyinhang,
    FDIconZhongxinyinhang
};

@interface NSString (FontDiao)

+ (FDIcon)fontDiaoEnumForIconIdentifier:(NSString*)iconIndentifier;

+ (NSString*)fontDiaoIconStringForEnum:(FDIcon)enumValue;

+ (NSString*)fontDiaoIconStringForIconIdentifier:(NSString*)iconIdentifier;

+ (NSDictionary*)fontDiaoIconsDictionary;

+ (uint)fontDiaoIconsCount;

@end
