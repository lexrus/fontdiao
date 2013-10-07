# By Lex Tang via http://lextang.com

require 'rake'

desc 'Compile Fontdiao'
task :compile do
	system('fontcustom compile -c fontdiao.yml')
	system('cp fontdiao/font/fontdiao.ttf fontdiao/ios/FontDiao/FDAssets/')
end


desc 'Watch and compile Fontdiao'
task :watch do
	system('fontcustom watch -c fontdiao.yml')
end

task :default => [:compile] do

end