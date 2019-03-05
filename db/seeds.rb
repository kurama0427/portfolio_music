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
                        content: "キメが多くて難しいです！",
                        created_at: "2019-03-05 09:37:05 UTC")
                        
daiki.microposts.create!(song_title: "花",
                        instrument_list: ["ドラム"],
                        content: "a flood of circle の花です。ベースと息を合わせ感情の高まりを演出しよう。",
                        picture: open("#{Rails.root}/app/assets/images/flower.jpg"),
                        created_at: "2019-03-05 09:37:05 UTC")
                        
daiki.microposts.create!(song_title: "ふたりごと",
                        instrument_list: ["ドラム"],
                        content: "Aメロでハイハットを裏に入れながらの16ビートがとても楽しい。その他にも１曲を通して山口さんのフレーズメーカーとしてのすごさが分かる。とても勉強になるので脱初心者を目指す方はぜひ。",
                        created_at: "2019-03-04 09:37:05 UTC")
                        
daiki.microposts.create!(song_title: "眠れぬ森の君のため",
                        instrument_list: ["ドラム"],
                        content: "テンポがゆっくり＆リズムパターンが少ないので初心者の方にもおすすめできます。",
                        beginner: "初心者にもおすすめ",
                        created_at: "2019-03-04 09:37:05 UTC")
                        
daiki.microposts.create!(song_title: "ハイブリッドレインボウ",
                        instrument_list: ["ドラム"],
                        content: "１曲を通してリズムパターンが変わりません。サビとその他で抑揚をつけるのがポイント。YouTubeに本人による解説動画もあります。",
                        beginner: "初心者にもおすすめ",
                        created_at: "2019-03-04 09:37:05 UTC")
                        
daiki.microposts.create!(song_title: "オリオンをなぞる",
                        instrument_list: ["ドラム"],
                        content: "とにかく手数が多くて難しい。ただユニゾンの曲の中では易しい方だと思う。叩いてて楽しいです。",
                        created_at: "2019-03-04 09:37:05 UTC")
                        
daiki.microposts.create!(song_title: "ここでキスして。",
                        instrument_list: ["ドラム"],
                        content: "カースケさん独特のハネるリズムを出すのが難しい。この曲からカースケさんのファンになりました。",
                        created_at: "2019-03-04 09:37:05 UTC")
                        
daiki.microposts.create!(song_title: "桜のあと",
                        instrument_list: ["ドラム"],
                        content: "手数が多く余裕が出せない。バンドメンバーとキメがきっちり合うととても楽しい。",
                        created_at: "2019-03-04 09:37:05 UTC")
                        
daiki.microposts.create!(song_title: "スモーキンビリー",
                        instrument_list: ["ドラム"],
                        content: "シンプルな８ビートでかっこよさ、ヤバさを出せるか。本人たちがかっこよすぎるのでLiveの雰囲気に近づけたいところ。",
                        created_at: "2019-03-04 09:37:05 UTC")
                        
daiki.microposts.create!(song_title: "カロン",
                        instrument_list: ["ドラム"],
                        content: "Aメロ、Bメロ、サビと全部工夫されたフレーズでおもしろい。コピーは大変ですが叩けると楽しいと思います。",
                        created_at: "2019-03-04 09:37:05 UTC")
                        
daiki.microposts.create!(song_title: "羊の群れは丘を登る",
                        instrument_list: ["ドラム"],
                        content: "Aメロのフレーズをきっちり叩くのが難しい。サビもシンプルなフレーズでノリを出すのが難しかった。",
                        created_at: "2019-03-04 09:37:05 UTC")
                        
daiki.microposts.create!(song_title: "シャドウ",
                        instrument_list: ["ドラム"],
                        content: "聴くたびに好きになる曲。Aメロがややこしい。サビのゆっくりな16ビートも結構よれよれになっちゃうからもっと練習が必要だなー。",
                        created_at: "2019-03-04 09:37:05 UTC")
                        
daiki.microposts.create!(song_title: "修羅",
                        instrument_list: ["ドラム"],
                        content: "テンポが速いので初心者向けではないです。ただフレーズはシンプルです。シンプルでかっこいい曲なのでコピー向きだと思います。",
                        created_at: "2019-03-04 09:37:05 UTC")
                        
daiki.microposts.create!(song_title: "バスロマンス",
                        instrument_list: ["ドラム"],
                        content: "ずっと同じフレーズなのでゲシュタルト崩壊みたいになる。コーラスするのが楽しい。",
                        created_at: "2019-03-04 09:37:05 UTC")
                        
daiki.microposts.create!(song_title: "The Beautiful Monkeys",
                        instrument_list: ["ドラム"],
                        content: "勢い重視でコピーするのがいいのかなと。フィルとか結構テキトーにやっちゃいました。楽しければいいかなと。",
                        created_at: "2019-03-04 09:37:05 UTC")
                        
daiki.microposts.create!(song_title: "Monkey Discooooooo",
                        instrument_list: ["ドラム"],
                        content: "Aメロが何気に手数多い。あとはノリノリで。コーラスも楽しい。",
                        created_at: "2019-03-04 09:37:05 UTC")
                        
daiki.microposts.create!(song_title: "メモリーズカスタム",
                        instrument_list: ["ドラム"],
                        content: "とにかく手数が多くて難しい。崎山さんのすごさが実感できる曲。",
                        created_at: "2019-03-04 09:37:05 UTC")
                        
daiki.microposts.create!(song_title: "Discommunication",
                        instrument_list: ["ドラム"],
                        content: "ところどころあるキメを合わせるのが結構難しい。あとはカオスタイム頑張ろう。いつかスティック回しも安定してできるといいな。",
                        created_at: "2019-03-04 09:37:05 UTC")
                        
daiki.microposts.create!(song_title: "涙のふるさと",
                        instrument_list: ["ドラム"],
                        content: "１曲を通してリズムパターンが同じなので覚える量は少ないです。足は疲れるかも。というか良い曲すぎる。",
                        beginner: "初心者にもおすすめ",
                        created_at: "2019-03-04 09:37:05 UTC")
                        
daiki.microposts.create!(song_title: "ハマナスの花",
                        instrument_list: ["ドラム"],
                        content: "リズムパターンがコロコロ変わるので結構難しい。",
                        created_at: "2019-03-04 09:37:05 UTC")
                        
daiki.microposts.create!(song_title: "ベンガルトラとウイスキー",
                        instrument_list: ["ドラム"],
                        content: "この曲はとにかくLiveでヤバさを出せるかどうかかなと思っております。Liveバージョンを参考にするのが良いかと思います。ベースと合わせるのがめちゃめちゃ楽しい。",
                        created_at: "2019-03-04 09:37:05 UTC")
                        
daiki.microposts.create!(song_title: "夏の日、残像",
                        instrument_list: ["ドラム"],
                        content: "シンプルでかっこいい。コピー向けの曲かなと思います。個人的に８ビート中心の曲が好きなので楽しかったです。",
                        created_at: "2019-03-04 09:37:05 UTC")
                        
kuromi = User.find(2);
kuromi.microposts.create!(song_title: "曇天",
                        instrument_list: ["ギター"],
                        content: "基本的なコードで弾くことができます。初心者にもおすすめできます。",
                        beginner: "初心者にもおすすめ",
                        created_at: "2019-03-05 09:37:05 UTC")
                        

                        


             