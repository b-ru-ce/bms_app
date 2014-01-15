namespace :db do

  desc "Create page with purpose Contacts"
  task :fill_feedback => :environment do

    require 'populator'
    require 'faker'


    page_feedback = Page.purpose('/contacts').first
    unless page_feedback.nil?
      page_feedback.delete
    end
    Page.create!(title: "Контакты", text: "Текст описание самой страницы контактов<br>" + Populator.sentences(5), show_in_menu:true, sort:5, purpose:'/contacts'  )

  end
end