namespace :db do
	task :bootstrap => [:drop ,:create , :migrate]
end