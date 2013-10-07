Pod::Spec.new do |s|
  s.name         = "FontDiao"
  s.version      = "0.0.7"
  s.summary      = "A chinese font for Web and iOS."
  s.homepage     = "https://github.com/lexrus/fontdiao"
  s.screenshots  = "https://raw.github.com/lexrus/fontdiao/master/assets/fontdiao_iphone.jpg"
  s.license      = 'MIT'
  s.author       = { "Lex Tang" => "lexrus@gmail.com" }
  s.source       = { :git => "https://github.com/lexrus/fontdiao.git", :tag => "0.0.7" }
  s.platform     = :ios, '5.0'
  s.source_files = 'fontdiao/ios/FontDiao/*.{h,m}'
  s.resource  = "fontdiao/ios/FontDiao/FDAssets/fontdiao.ttf"
  s.requires_arc = true
end