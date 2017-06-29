INSERT INTO Prefecture(name) VALUES('北海道');
INSERT INTO Prefecture(name) VALUES('青森県');
INSERT INTO Prefecture(name) VALUES('岩手県');
INSERT INTO Prefecture(name) VALUES('宮城県');
INSERT INTO Prefecture(name) VALUES('秋田県');
INSERT INTO Prefecture(name) VALUES('山形県');
INSERT INTO Prefecture(name) VALUES('福島県');
INSERT INTO Prefecture(name) VALUES('茨城県');
INSERT INTO Prefecture(name) VALUES('栃木県');
INSERT INTO Prefecture(name) VALUES('群馬県');
INSERT INTO Prefecture(name) VALUES('埼玉県');
INSERT INTO Prefecture(name) VALUES('千葉県');
INSERT INTO Prefecture(name) VALUES('東京都');
INSERT INTO Prefecture(name) VALUES('神奈川県');
INSERT INTO Prefecture(name) VALUES('新潟県');
INSERT INTO Prefecture(name) VALUES('富山県');
INSERT INTO Prefecture(name) VALUES('石川県');
INSERT INTO Prefecture(name) VALUES('福井県');
INSERT INTO Prefecture(name) VALUES('山梨県');
INSERT INTO Prefecture(name) VALUES('長野県');
INSERT INTO Prefecture(name) VALUES('岐阜県');
INSERT INTO Prefecture(name) VALUES('静岡県');
INSERT INTO Prefecture(name) VALUES('愛知県');
INSERT INTO Prefecture(name) VALUES('三重県');
INSERT INTO Prefecture(name) VALUES('滋賀県');
INSERT INTO Prefecture(name) VALUES('京都府');
INSERT INTO Prefecture(name) VALUES('大阪府');
INSERT INTO Prefecture(name) VALUES('兵庫県');
INSERT INTO Prefecture(name) VALUES('奈良県');
INSERT INTO Prefecture(name) VALUES('和歌山県');
INSERT INTO Prefecture(name) VALUES('鳥取県');
INSERT INTO Prefecture(name) VALUES('島根県');
INSERT INTO Prefecture(name) VALUES('岡山県');
INSERT INTO Prefecture(name) VALUES('広島県');
INSERT INTO Prefecture(name) VALUES('山口県');
INSERT INTO Prefecture(name) VALUES('徳島県');
INSERT INTO Prefecture(name) VALUES('香川県');
INSERT INTO Prefecture(name) VALUES('愛媛県');
INSERT INTO Prefecture(name) VALUES('高知県');
INSERT INTO Prefecture(name) VALUES('福岡県');
INSERT INTO Prefecture(name) VALUES('佐賀県');
INSERT INTO Prefecture(name) VALUES('長崎県');
INSERT INTO Prefecture(name) VALUES('熊本県');
INSERT INTO Prefecture(name) VALUES('大分県');
INSERT INTO Prefecture(name) VALUES('宮崎県');
INSERT INTO Prefecture(name) VALUES('鹿児島県');
INSERT INTO Prefecture(name) VALUES('沖縄県');

INSERT INTO City(prefecture_id, name) VALES(13, '港区');
INSERT INTO City(prefecture_id, name) VALES(13, '渋谷区');
INSERT INTO City(prefecture_id, name) VALES(13, '新宿区');
INSERT INTO City(prefecture_id, name) VALES(13, '足立区');
INSERT INTO City(prefecture_id, name) VALES(13, '荒川区');
INSERT INTO City(prefecture_id, name) VALES(13, '板橋区');
INSERT INTO City(prefecture_id, name) VALES(13, '江戸川区');
INSERT INTO City(prefecture_id, name) VALES(13, '太田区');
INSERT INTO City(prefecture_id, name) VALES(13, '葛飾区');
INSERT INTO City(prefecture_id, name) VALES(13, '北区');
INSERT INTO City(prefecture_id, name) VALES(13, '江東区');
INSERT INTO City(prefecture_id, name) VALES(13, '品川区');
INSERT INTO City(prefecture_id, name) VALES(13, '杉並区');
INSERT INTO City(prefecture_id, name) VALES(13, '墨田区');
INSERT INTO City(prefecture_id, name) VALES(13, '世田谷区');
INSERT INTO City(prefecture_id, name) VALES(13, '台東区');
INSERT INTO City(prefecture_id, name) VALES(13, '中央区');
INSERT INTO City(prefecture_id, name) VALES(13, '千代田区');
INSERT INTO City(prefecture_id, name) VALES(13, '豊島区');
INSERT INTO City(prefecture_id, name) VALES(13, '中野区');
INSERT INTO City(prefecture_id, name) VALES(13, '練馬区');
INSERT INTO City(prefecture_id, name) VALES(13, '文京区');
INSERT INTO City(prefecture_id, name) VALES(13, '目黒区');

INSERT INTO Area(city_id, name) VALUES(1, '青山・表参道');
INSERT INTO Area(city_id, name) VALUES(2, '渋谷・代々木');
INSERT INTO Area(city_id, name) VALUES(3, '新宿');

INSERT INTO Thema(name) VALUES('食べる');
INSERT INTO Thema(name) VALUES('遊ぶ');

INSERT INTO Thema_detail(thema_id, name) VALUES(1, '和食');
INSERT INTO Thema_detail(thema_id, name) VALUES(1, '中華');
INSERT INTO Thema_detail(thema_id, name) VALUES(1, 'イタリアン');
INSERT INTO Thema_detail(thema_id, name) VALUES(1, 'カフェ');
INSERT INTO Thema_detail(thema_id, name) VALUES(2, '遊園地');
INSERT INTO Thema_detail(thema_id, name) VALUES(2, '映画');

INSERT INTO User(password, name, birth_year, birth_month, birth_day,
                 sex, prefecture_id, mail)
   VALUES ('password', 'numa', 1991, 12, 29,
            0, 13, 'hogehoge@gmail.com');
INSERT INTO User(password, name, birth_year, birth_month, birth_day,
                 sex, prefecture_id, mail)
   VALUES ('password', 'mori', 1992, 12, 01,
            0, 13, 'hogehoge@gmail.com');

INSERT INTO Chat(area_id, user_id, content)
    VALUES(1, 1, '表参道のカフェが知りたいです。');
INSERT INTO Chat(area_id, user_id, content)
    VALUES(2, 2, '渋谷の駅ちかの映画館はどこ？');

INSERT INTO Comment(user_id, chat_id, thema_detail_id, content)
    VALUES(2, 1, 4, 'ブルーボトルコーヒーがおすすめ');
INSERT INTO Comment(user_id, chat_id, thema_detail_id, content)
    VALUES(1, 2, 6, '東急シネマが地下直結でいけますよ');

INSERT INTO Good(user_id, comment_id) VALUES(1, 1);
INSERT INTO Good(user_id, comment_id) VALUES(2, 2);

INSERT INTO Favorite(user_id, comment_id) VALUES(1, 1);
INSERT INTO Favorite(user_id, comment_id) VALUES(2, 2);