# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
universities = [
  'Черкасский институт банковского дела',
  'Восточноевропейский университет экономики и менеджмента (ВУЭМ)',
  'Черкасский государственный технологический университет (ЧГТУ)',
  'Черкасский институт пожарной безопасности имени Героев Чернобыля',
  'Черкасский национальный университет им. Богдана Хмельницкого (ЧНУ)',
  'Черкасский филиал Харьковского аэрокосмического унирерситета им. Н. Е. Жуковского'
]
universities.each { |u| University.create(title: u) }
