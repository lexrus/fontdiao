#!/usr/bin/env ruby
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


desc 'Push master'
task :push do
	system('git checkout master')
	system('git status')
	system('git add .')
	system('git commit -am "..."')
	system('git push origin master')
end


desc 'Sync master to gh-pages'
task :sync do
	system('git checkout gh-pages')
	system('git rebase master')
	system('git push origin gh-pages')
	system('git checkout master')
end


desc 'Push and sync master to gh-pages'
task :publish => [:push, :sync] do

end


task :default => [:compile] do

end