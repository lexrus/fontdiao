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
        fontDiaoIcons = @[<% @glyphs.each do |name, value|
          %>
            @"\u<%= value[:codepoint].to_s(16) %>"<% if value[:codepoint] != @glyphs.length - 1 %>,<% end %><% end %>
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
        <% @glyphs.each do |name, value|
          selector = @options[:css_selector].sub('{{glyph}}', name.to_s)
          %>
        d[@"<%= selector[1..-1].gsub('.', ' ') %>"] = @(FDIcon<%= name.to_s.capitalize.delete '-' %>);<% end %>

        enumDictionary = d;
    });
    return enumDictionary;
}

+ (uint)fontDiaoIconsCount
{
    return [self fontDiaoIcons].count;
}

@end
