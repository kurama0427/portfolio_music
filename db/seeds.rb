# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name:  "だいき",
             email: "aaaa@aaaa.com",
             password:              "taretare",
             password_confirmation: "taretare",
             picture: open("#{Rails.root}/app/assets/images/19381_en_1.jpg"))

User.create!(name:  "くろみ",
             email: "bbbb@bbbb.com",
             password:              "katakata",
             password_confirmation: "katakata",
             picture: open("#{Rails.root}/app/assets/images/suiren.jpg"))
             
daiki = User.find(1);
daiki.microposts.create!(song_title: "半径30cmの中を知らない",
                        instrument_list: ["ドラム"],
                        content: "キメが多くて難しいです！")
                        
kuromi = User.find(2);
kuromi.microposts.create!(song_title: "曇天",
                        instrument_list: ["ギター"],
                        content: "基本的なコードで弾くことができます。初心者にもおすすめできます。",
                        beginner: "初心者にもおすすめ")
                        


             