-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 2019 年 2 月 28 日 12:02
-- サーバのバージョン： 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gs_f02_db24`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `title`, `author`, `url`, `comment`, `indate`) VALUES
(10, '銀河ヒッチハイクガイド', 'だれ？', 'http://localhost/gs_bm_DB/index.php2', 'まちがえた', '2019-02-12 22:34:42'),
(13, 'ソフトバンク', '', 'http://html5.cyberlab.info/elements/forms/input-readonly.html', 'ダッシュ', '2019-02-16 23:00:01'),
(14, 'ドラえもん', '', 'http://localhost/gs_bm_DB/index.php2', 'どらえもーーん', '2019-02-20 17:40:08'),
(15, '永遠の０', '百田尚樹さん', 'https://tabelog.com/fukuoka/A4001/A400101/rstLst/lunch/curry/', 'かなしかった', '2019-02-26 00:25:55'),
(16, 'ビーフジャーキー', '犬犬', 'http://localhost/gs_bm_DB/index.php', 'わんわんわんわん', '2019-02-26 00:30:32'),
(18, 'さるのこしかけ', 'さくらももこ', 'https://www.googleapis.com/books/v1/volumes/TvHrAAAAMAAJ', '「こんなにおもしろい本があったのか!」と小学生からお年寄りまでを笑いの渦に巻き込んだ爆笑エッセイの金字塔!!著者が日常で体験した出来事に父ヒロシや母・姉など、いまやお馴染みの家族も登場し、愉快で楽しい笑いが満載の一冊です。「巻末お楽しみ対談」ではもう一度、全身が笑いのツボと化します。描き下ろしカラーイラストつき。', '2019-02-26 07:34:27'),
(19, '告白', '木村まるみ', 'https://www.googleapis.com/books/v1/volumes/1SBXCgAAQBAJ', '娘がこのクラスの生徒に殺されました———。ざわつく教室で中学教師・森口悠子が衝撃の『告白』を始める。森口はシングルマザー。娘の父親は熱血先生で知られる教師。しかし、ＨＩＶに感染していることがわかり、娘のことを考えて結婚はしなかった。ある日、娘の愛美が学校のプールで亡くなっているのが発見される。警察は誤って転落したことによる事故死と判断。しかし、森口は殺人であることに気づく。犯人はふたり、このクラスにいる——。あのベストセラーが映画化、衝撃のコミカライズ！ 話題必至で見逃せない!!', '2019-02-26 17:09:59'),
(20, '冷たい校舎の時は止まる', 'カズオ・イシグロ', 'https://www.googleapis.com/books/v1/volumes/u2vaTWhcEBsC', '優秀な介護人キャシー・Hは「提供者」と呼ばれる人々の世話をしている。生まれ育った施設へールシャムの親友トミーやルースも「提供者」だった。キャシーは施設での奇妙な日々に思いをめぐらす。図画工作に力を入れた授業、毎週の健康診断、保護官と呼ばれる教師たちのぎこちない態度......。彼女の回想はヘールシャムの残酷な真実を明かしていく。解説:柴田元幸', '2019-02-27 19:41:20'),
(21, '深夜特急', '渡辺えり子', 'http://books.google.co.jp/books?id=jwgMRgAACAAJ&dq=intitle:%E6%B7%B1%E5%A4%9C%E7%89%B9%E6%80%A5&hl=&source=gbs_api', 'コメントなし', '2019-02-27 19:47:21'),
(22, '深夜特急', '西牟田靖', 'http://books.google.co.jp/books?id=eZcbNwAACAAJ&dq=intitle:%E6%B7%B1%E5%A4%9C%E7%89%B9%E6%80%A5&hl=&source=gbs_api', '僕は26歳の春、ユーラシア放浪に出発した...。旅人のバイブル『深夜特急』。沢木耕太郎がたどったルートを忠実になぞり、泊まった宿を丹念に捜し歩き、めざすははるか二万キロ先のロンドン。さあ無事に着けるのか?「深夜特急」の旅を再現。', '2019-02-27 19:56:31'),
(24, '深夜特急', 'ヤスナリオ', 'http://books.google.co.jp/books?id=XP88kNjgM3QC&dq=intitle:%E6%B7%B1%E5%A4%9C%E7%89%B9%E6%80%A5&hl=&source=gbs_api', 'リアルに食べたい、これなら作れそうって思える夜ごはんのレシピ集99+おまけ10品。', '2019-02-27 21:50:57'),
(25, 'ライ麦畑でつかまえて', '竹内康浩', 'http://books.google.co.jp/books?id=E36qPAAACAAJ&dq=intitle:%E3%83%A9%E3%82%A4%E9%BA%A6%E7%95%91%E3%81%A7%E3%81%A4%E3%81%8B%E3%81%BE%E3%81%88%E3%81%A6&hl=&source=gbs_api', '誰もが読んだ『ライ麦畑でつかまえて』なのに、誰も見ていなかったものがそこにはある。なぜホールデンは右手に怪我をしたのか、なぜ弟は7月18日に死んだのか、なぜ最後に雨が降るのか、こんな細部に、謎がわんさか、それが解けると、もうびっくりな世界が現れる!小説はこんなふうに読めるものなの?息をのむ分析力、圧倒的な説得力、歴史的な新発見。', '2019-02-27 22:51:27'),
(26, 'フェルマーの最終定理', '星野道夫', 'https://www.googleapis.com/books/v1/volumes/kOdKAAAACAAJ', '広大な大地と海に囲まれ、正確に季節がめぐるアラスカ。1978年に初めて降り立った時から、その美しくも厳しい自然と動物たちの生き様を写真に撮る日々。その中で出会ったアラスカ先住民族の人々や開拓時代にやってきた白人たちの生と死が隣り合わせの生活を、静かでかつ味わい深い言葉で綴る33篇を収録。', '2019-02-27 22:52:59'),
(27, 'ライ麦畑でつかまえて', 'J.D. サリンジャー', 'http://books.google.co.jp/books?id=_5gUAAAACAAJ&dq=intitle:%E3%83%A9%E3%82%A4%E9%BA%A6%E7%95%91%E3%81%A7%E3%81%A4%E3%81%8B%E3%81%BE%E3%81%88%E3%81%A6&hl=&source=gbs_api', '発表から半世紀、いまなお世界中の若者たちの心をとらえつづける名作の名訳。永遠の青春小説。', '2019-02-27 23:55:06'),
(28, 'ラバー・ソウル', '末次安里さん', 'http://books.google.co.jp/books?id=2QFnPQAACAAJ&dq=intitle:%E3%83%A9%E3%83%90%E3%83%BC%E3%83%BB%E3%82%BD%E3%82%A6%E3%83%AB&hl=&source=gbs_api', '『ラバー・ソウル』は、どれも粋で洒落てて軽妙だ。“弾む心”が伝播する。その謎を読解し、探究し、音楽の紀行文みたいなものを綴ろうと思う。過渡期の4人が何を思い、どうな音を求め、どこに進路を見い出したのか。成功し、騒がれて、疾走した60年代半ば。ジョンとポールとジョージとリンゴの四重奏団はなぜ、表現の発露をスタジオに絞り込んでいったのか。彼らの心の軌跡を作品の行間に探り、音色の必然性を問い、“弾む心”の秘密を盗む。', '2019-02-28 00:22:29'),
(29, 'カエルの楽園', '百田尚樹', 'http://books.google.co.jp/books?id=sG-CswEACAAJ&dq=intitle:%E3%82%AB%E3%82%A8%E3%83%AB%E3%81%AE%E6%A5%BD%E5%9C%92&hl=&source=gbs_api', '国を追われた二匹のアマガエルは、辛い放浪の末に夢の楽園にたどり着く。その国は「三戒」と呼ばれる戒律と、「謝りソング」という奇妙な歌によって守られていた。だが、南の沼に棲む凶暴なウシガエルの魔の手が迫り、楽園の本当の姿が明らかになる...。単行本刊行後、物語の内容を思わせる出来事が現実に起こり、一部では「予言書」とも言われた現代の寓話にして、国家の意味を問う警世の書。', '2019-02-28 07:30:44'),
(30, 'ゴールデンスランバー', '伊坂幸太郎', 'https://www.googleapis.com/books/v1/volumes/XdNYewAACAAJ', '衆人環視の中、首相が爆殺された。そして犯人は俺だと報道されている。なぜだ?何が起こっているんだ?俺はやっていない―。首相暗殺の濡れ衣をきせられ、巨大な陰謀に包囲された青年・青柳雅春。暴力も辞さぬ追手集団からの、孤独な必死の逃走。行く手に見え隠れする謎の人物達。運命の鍵を握る古い記憶の断片とビートルズのメロディ。スリル炸裂超弩級エンタテインメント巨編。', '2019-02-28 07:44:10'),
(31, 'ケインとアベル', 'ジェフリー アーチャー', 'http://books.google.co.jp/books?id=1C9eAQAACAAJ&dq=intitle:%E3%82%B1%E3%82%A4%E3%83%B3%E3%81%A8%E3%82%A2%E3%83%99%E3%83%AB&hl=&source=gbs_api', '1906年、ポーランドの片田舎で私生児として生れたヴワデクは、極貧の猟師に引きとられた。時を同じくしてボストンの名門ケイン家に生れたウィリアムは、祝福された人生を歩み始めた。ドイツの侵攻で祖国も肉親も失ったヴワデクは、数奇な放浪の旅の果て、無一文の移民としてアメリカに辿りつき、アベルと改名した。「三作目が勝負」と明言した著者が、満を持して発表する大作。', '2019-02-28 07:45:24');

-- --------------------------------------------------------

--
-- テーブルの構造 `user_table`
--

CREATE TABLE `user_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `user_table`
--

INSERT INTO `user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`, `indate`) VALUES
(22, 'oeeo', 'opopopo', '@@@@@@', 0, 1, '2019-02-14 01:38:22'),
(35, 'まにあうか', '1', '1', 0, 1, '2019-02-14 13:12:16'),
(39, 'できたよ！', 'dekita', 'dekita', 0, 0, '2019-02-16 23:48:54'),
(66, '課題やる', 'kadai', 'kadai', 0, 0, '2019-02-24 20:50:46'),
(68, 'おなかへった', 'hetta', 'hetta', 0, 0, '2019-02-27 16:52:41'),
(70, '管理者', 'kanri', 'kanri', 1, 0, '2019-02-28 00:56:34'),
(76, '未完成', 'mikan', 'mikan', 0, 0, '2019-02-28 20:43:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
