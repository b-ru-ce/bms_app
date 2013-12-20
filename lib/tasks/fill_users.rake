namespace :db do

  desc "Fill model User and Role"
  task :fill_users => :environment do
    Role.destroy_all
    admin = Role.create :name => 'admin'
    superadmin = Role.create :name => 'superadmin'

    User.destroy_all
    admin.users.create email: 'admin@admin.ru', password: 'password', password_confirmation: 'password'
    superadmin.users.create email: 'mrswlasowa@gmail.com', password: 'password', password_confirmation: 'password'
  end
end