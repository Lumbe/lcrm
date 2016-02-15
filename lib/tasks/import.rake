require 'csv'

namespace :import do

  desc "Import contacts from csv"
  task users: :environment do
    filename = File.join Rails.root, 'contacts_import9.csv'
    counter = 0
    CSV.foreach(filename, headers:true) do |row|
      contact = Contact.create(created_at: Date.parse(row["Дата обращения"]), cf___4: row["Регион"],
                               first_name: row["Имя"],
                               last_name: (row["Фамилия"].nil? ? "" : row["Фамилия"]),
                               cf___9: row["Источник"],
                               cf___5: row["Отдали"],
                               cf___2: row["Проект"],
                               cf___3: row["Кв.м."],
                               cf__: row["Откуда"],
                               cf___6: row["Звонок"],
                               cf___7: row["Сайт-запрос"],
                               cf___8: row["Пришел в офис"],
                               assigned_to: 1,
                               phone: (row["Рабочий телефон"].nil? ? row["Мобильный телефон"] : row["Рабочий телефон"]),
                               email: (row["Рабочий e-mail"].nil? ? row["Частный e-mail"] : row["Рабочий e-mail"]))
      Comment.create(user_id:1, commentable_id:contact.id, commentable_type:"Contact", comment:row["Комментарий"]) if !row["Комментарий"].nil?
      AccountContact.create(account_id: 1, contact_id: contact.id)
    puts "#{email} - #{contact.errors.full_messages.join(",")}" if contact.errors.any?
    counter += 1 if contact.persisted?
      p row
  end
  puts "Imported #{counter} contacts"
  end
end
