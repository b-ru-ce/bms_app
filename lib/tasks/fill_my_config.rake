namespace :db do

  desc "Fill model MyConfig"
  task :fill_my_config => :environment do
    MyConfig.destroy_all
    MyConfig.create :key => 'email', :key_ru => 'E-mail', :value => 'mrswlasowa@gmail.com'
    MyConfig.create :key => 'phone', :key_ru => 'Телефон', :value => '(495) 225-59-10'
    MyConfig.create :key => 'address', :key_ru => 'Адрес', :value => 'г. Москва, ул. Гагарина, 42'
    MyConfig.create :key => 'vkontakte', :key_ru => 'Ссылка на социальную сеть ВКонтакте', :value => '/'
    MyConfig.create :key => 'facebook', :key_ru => 'Ссылка на социальную сеть Facebook', :value => '/'
    MyConfig.create :key => 'twitter', :key_ru => 'Ссылка на социальную сеть Twitter', :value => '/'
    MyConfig.create :key => 'odnokl', :key_ru => 'Ссылка на социальную сеть Одноклассники', :value => '/'
    MyConfig.create key: 'title_of_window', key_ru: 'Заголовок окна по умолчанию', value: 'Сайт'
    MyConfig.create key: 'metrika', key_ru: 'Код счетчика статистики', value: 'код счетчика'
  end
end