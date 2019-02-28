<?php

//セッションスタート
session_start();

//外部ファイル読み込み
include('functions.php');

//ログイン状態チェック
chk_ssid();

//ログイン名を取得
$_name = $_SESSION['name'];

//navのmenu関数
$menu = menu();

// google book api
$data = "https://www.googleapis.com/books/v1/volumes?q=intitle:";
$json = file_get_contents($data);
var_dump($json);
$json_decode = json_decode($json, true);

foreach ($json_decode['items'] as $item) {
    // echo $item['volumeInfo']['title'];
    $author = $item['volumeInfo']['authors'][0];
    echo($author);
    $url = $item['selfLink'];
    echo($url);
    $dscrp = $item['volumeInfo']['description'];
    echo($dscrp);
}

// jsonデータ内の『entry』部分を複数取得して、postsに格納
// $posts = $json_decode->items;
// var_dump($posts);


?>


<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>本のブックマーク</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
</head>

<body>

    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light bg_yellow">
            <a class="navbar-brand" href="#">本のブックマーク</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <?=$menu?>
                    <li class="nav-item"><a class="nav-link" href="bm_logout.php">ログアウト</a></li>
                    <!-- <li class="nav-item">
                        <a class="nav-link" href="index.php">投稿画面</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="select.php">コメント一覧</a>
                    </li> -->
                </ul>
            </div>

            <!-- ログイン名を表示 -->
            <p class="lginStatus"><span><?=$_name?></span>さんがログイン中</p>            
        </nav>
    </header>

    <form action="insert.php" method="post">
        <div class="form-group">
            <label for="title">書籍名</label>
            <input type="text" class="form-control" id="title" name="title">
        </div>
        <div class="form-group">
            <button type="button" name="serch" value="serch" id="serchBtn" class="btn btn-primary">検索する</button>
        </div>

        <!-- 検索書籍リスト -->
        <div class="form-group">
            <select id="details" name="sample">
                <!-- optionタグ挿入 -->
            </select>
        </div>

        <div class="form-group" id="bookImg">
        </div>

        <div class="form-group">
            <label for="author">著者名</label>
            <input type="text" class="form-control" id="author" name="author">
        </div>
        <div class="form-group">
            <label for="url">書籍のURL</label>
            <input type="text" class="form-control" id="url" name="url">
        </div>
        <div class="form-group">
            <label for="comment">Comment</label>
            <textarea class="form-control" id="comment" rows="3" name="comment"></textarea>
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary">登録する</button>
        </div>
    </form>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    
    <script>
    // google book apiの書籍情報をselectタグ内に挿入

    var books;
    $('#serchBtn').on('click',function(){
        var title = $("#title").val();
        var googleAPI = "https://www.googleapis.com/books/v1/volumes?q=intitle:"+title;
        console.log(googleAPI);

            $.getJSON(googleAPI, function(data) {
                console.log(data);
                books = data
                
                var str ='';
                for(var i = 0; i <data.items.length; i++){
                    str += '<option>【 著者名 】'+ data.items[i].volumeInfo.authors[0];
                    str += '【 作品名 】'+ data.items[i].volumeInfo.title;
                    str += '（'+ data.items[i].volumeInfo.publishedDate + '年発行）</option>';
                }
                if(data.items.length>1){ //候補リストが複数あれば、セレクトタグに入れる
                    $('#details').empty();
                    $('#details').html(str);
                }else{ //そうでなければ、直接inputタグに入れる
                    $('#details').empty();
                    var bookImg1 = data.items[0].volumeInfo.imageLinks.thumbnail;
                    console.log(bookImg1);
                    $("#bookImg").empty();
                    $("#bookImg").prepend('<img src="' + bookImg1 + '"/>');
                    $("#author").val(data.items[0].volumeInfo.authors[0]);
                    $("#url").val(data.items[0].selfLink);
                    $("#comment").val(data.items[0].volumeInfo.description);
                }
            });
        });

    // セレクトタグから選択したタイトルをinputタグに入れる
        var select = document.querySelector("#details");
        var options = document.querySelectorAll("#details option");
        select.addEventListener('change',function(){
            var index = this.selectedIndex; //配列の順番を取得
            // console.log(index);
            console.log(index);

            //サムネールがあれば表示
            var bookImg = books.items[index].volumeInfo.imageLinks.thumbnail;
            console.log(bookImg);
            $("#bookImg").empty();
            $("#bookImg").prepend('<img src="' + bookImg + '"/>');
            // 著者名を取得
            var selectAuthor = books.items[index].volumeInfo.authors[0];
            console.log(selectAuthor);
            $('#author').val(selectAuthor);
            // urlを取得
            var selectLink = books.items[index].volumeInfo.infoLink;
            console.log(selectLink);
            $('#url').val(selectLink);
            // コメントを取得
            var selectDescrip = books.items[index].volumeInfo.description;
            console.log(selectDescrip);
            $('#comment').val(selectDescrip);
        });

    
    //inpotタグに配列１冊目の書籍を直接挿入する
    // $('#serchBtn').on('click',function(){
    //     var title = $("#title").val();
    //     var googleAPI = "https://www.googleapis.com/books/v1/volumes?q=intitle:"+title;
    //     console.log(googleAPI);

    //         $.getJSON(googleAPI, function(data) {
    //             console.log(data);
            // $("#author").val(data.items[0].volumeInfo.authors[0]);
            // $("#url").val(data.items[0].selfLink);
            // $("#comment").val(data.items[0].volumeInfo.description);

    //             });
    //     });

    //PHPで書こうとしたメモ
    // $('#serchBtn').on('click',function(){
    //     $('#author').val('<?php echo $author?>');
    //     $('#url').val('<?php echo $url?>');
    //     $('#comment').val('<?php echo $dscrp?>');
    // })
    </script>

</body>

</html>