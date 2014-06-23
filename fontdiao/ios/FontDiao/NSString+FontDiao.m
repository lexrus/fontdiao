//
//  NSString+FontDiao.m
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

#import "NSString+FontDiao.h"

@implementation NSString (FontDiao)

#pragma mark - Public

+ (FDIcon)fontDiaoEnumForIconIdentifier:(NSString *)iconIndentifier
{
    NSDictionary *enums = [self fontDiaoIconsDictionary];
    return [enums[iconIndentifier] integerValue];
}

+ (NSString*)fontDiaoIconStringForEnum:(FDIcon)enumValue
{
    return [self fontDiaoIcons][enumValue];
}

+ (NSString*)fontDiaoIconStringForIconIdentifier:(NSString *)iconIdentifier
{
    return [self fontDiaoIconStringForEnum:[self fontDiaoEnumForIconIdentifier:iconIdentifier]];
}

#pragma mark - Private

+ (NSArray*)fontDiaoIcons
{
    static dispatch_once_t iconsToken;
    static NSArray *fontDiaoIcons;
    dispatch_once(&iconsToken, ^{
        fontDiaoIcons = @[
            @"\uf100",
            @"\uf101",
            @"\uf102",
            @"\uf103",
            @"\uf104",
            @"\uf105",
            @"\uf106",
            @"\uf107",
            @"\uf108",
            @"\uf109",
            @"\uf10a",
            @"\uf10b",
            @"\uf10c",
            @"\uf10d",
            @"\uf10e",
            @"\uf10f",
            @"\uf110",
            @"\uf111",
            @"\uf112",
            @"\uf113",
            @"\uf114",
            @"\uf115",
            @"\uf116",
            @"\uf117",
            @"\uf118",
            @"\uf119",
            @"\uf11a",
            @"\uf11b",
            @"\uf11c",
            @"\uf11d",
            @"\uf11e",
            @"\uf11f",
            @"\uf120",
            @"\uf121",
            @"\uf122",
            @"\uf123",
            @"\uf124",
            @"\uf125",
            @"\uf126",
            @"\uf127",
            @"\uf128",
            @"\uf129",
            @"\uf12a",
            @"\uf12b",
            @"\uf12c",
            @"\uf12d",
            @"\uf12e",
            @"\uf12f",
            @"\uf130",
            @"\uf131",
            @"\uf132",
            @"\uf133",
            @"\uf134",
            @"\uf135",
            @"\uf136",
            @"\uf137",
            @"\uf138",
            @"\uf139",
            @"\uf13a",
            @"\uf13b",
            @"\uf13c",
            @"\uf13d",
            @"\uf13e",
            @"\uf13f",
            @"\uf140",
            @"\uf141",
            @"\uf142",
            @"\uf143",
            @"\uf144",
            @"\uf145",
            @"\uf146",
            @"\uf147",
            @"\uf148"
        ];
    });
    return fontDiaoIcons;
}

+ (NSDictionary*)fontDiaoIconsDictionary
{
    static dispatch_once_t enumToken;
    static NSDictionary *enumDictionary;
    dispatch_once(&enumToken, ^{
        NSMutableDictionary *d = [[NSMutableDictionary alloc] init];
        
        d[@"icon-360yunpan"] = @(FDIcon360yunpan);
        d[@"icon-58"] = @(FDIcon58);
        d[@"icon-acer"] = @(FDIconAcer);
        d[@"icon-alibaba"] = @(FDIconAlibaba);
        d[@"icon-alipay"] = @(FDIconAlipay);
        d[@"icon-asus"] = @(FDIconAsus);
        d[@"icon-baidu"] = @(FDIconBaidu);
        d[@"icon-baiduyun"] = @(FDIconBaiduyun);
        d[@"icon-cctv"] = @(FDIconCctv);
        d[@"icon-clover"] = @(FDIconClover);
        d[@"icon-cnbeta"] = @(FDIconCnbeta);
        d[@"icon-ctrip"] = @(FDIconCtrip);
        d[@"icon-dangdang"] = @(FDIconDangdang);
        d[@"icon-dazhong"] = @(FDIconDazhong);
        d[@"icon-dianping"] = @(FDIconDianping);
        d[@"icon-dianxin"] = @(FDIconDianxin);
        d[@"icon-dongfangweishi"] = @(FDIconDongfangweishi);
        d[@"icon-douban"] = @(FDIconDouban);
        d[@"icon-fanfou"] = @(FDIconFanfou);
        d[@"icon-fangzheng"] = @(FDIconFangzheng);
        d[@"icon-feixin"] = @(FDIconFeixin);
        d[@"icon-fenghuangweishi"] = @(FDIconFenghuangweishi);
        d[@"icon-ganji"] = @(FDIconGanji);
        d[@"icon-gongshangyinhang"] = @(FDIconGongshangyinhang);
        d[@"icon-jd"] = @(FDIconJd);
        d[@"icon-jiansheyinhang"] = @(FDIconJiansheyinhang);
        d[@"icon-jiaotongyinhang"] = @(FDIconJiaotongyinhang);
        d[@"icon-jijia"] = @(FDIconJijia);
        d[@"icon-kingsoft"] = @(FDIconKingsoft);
        d[@"icon-kuandaishan"] = @(FDIconKuandaishan);
        d[@"icon-kx001"] = @(FDIconKx001);
        d[@"icon-letv"] = @(FDIconLetv);
        d[@"icon-liantong"] = @(FDIconLiantong);
        d[@"icon-lianxiang"] = @(FDIconLianxiang);
        d[@"icon-miliao"] = @(FDIconMiliao);
        d[@"icon-mop"] = @(FDIconMop);
        d[@"icon-pps"] = @(FDIconPps);
        d[@"icon-qq"] = @(FDIconQq);
        d[@"icon-qqyinyue"] = @(FDIconQqyinyue);
        d[@"icon-qzone"] = @(FDIconQzone);
        d[@"icon-renminyinhang"] = @(FDIconRenminyinhang);
        d[@"icon-renren"] = @(FDIconRenren);
        d[@"icon-shanghaidianshitai"] = @(FDIconShanghaidianshitai);
        d[@"icon-shanghaiyinhang"] = @(FDIconShanghaiyinhang);
        d[@"icon-taobao"] = @(FDIconTaobao);
        d[@"icon-tengxunweibo"] = @(FDIconTengxunweibo);
        d[@"icon-tmall"] = @(FDIconTmall);
        d[@"icon-tudou"] = @(FDIconTudou);
        d[@"icon-v2ex"] = @(FDIconV2ex);
        d[@"icon-wangyi"] = @(FDIconWangyi);
        d[@"icon-wangyiweibo"] = @(FDIconWangyiweibo);
        d[@"icon-wangyiyunyinyue"] = @(FDIconWangyiyunyinyue);
        d[@"icon-wechat"] = @(FDIconWechat);
        d[@"icon-weibo"] = @(FDIconWeibo);
        d[@"icon-weifeng"] = @(FDIconWeifeng);
        d[@"icon-xiami"] = @(FDIconXiami);
        d[@"icon-xiaomi"] = @(FDIconXiaomi);
        d[@"icon-xinyeyinhang"] = @(FDIconXinyeyinhang);
        d[@"icon-xunlei"] = @(FDIconXunlei);
        d[@"icon-yihaodian"] = @(FDIconYihaodian);
        d[@"icon-yilong"] = @(FDIconYilong);
        d[@"icon-yinlian"] = @(FDIconYinlian);
        d[@"icon-yixun"] = @(FDIconYixun);
        d[@"icon-youdao"] = @(FDIconYoudao);
        d[@"icon-youku"] = @(FDIconYouku);
        d[@"icon-youzhen"] = @(FDIconYouzhen);
        d[@"icon-zhaoshangyinhang"] = @(FDIconZhaoshangyinhang);
        d[@"icon-zhenai"] = @(FDIconZhenai);
        d[@"icon-zheshangyinhang"] = @(FDIconZheshangyinhang);
        d[@"icon-zhihu-square"] = @(FDIconZhihusquare);
        d[@"icon-zhihu"] = @(FDIconZhihu);
        d[@"icon-zhongguoyinhang"] = @(FDIconZhongguoyinhang);
        d[@"icon-zhongxinyinhang"] = @(FDIconZhongxinyinhang);

        enumDictionary = d;
    });
    return enumDictionary;
}

+ (uint)fontDiaoIconsCount
{
    return [self fontDiaoIcons].count;
}

@end
