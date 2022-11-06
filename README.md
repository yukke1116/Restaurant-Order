# RestaurantOrder(レストランオーダー)－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－
PHP自作

## 概要－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－
飲食店用の注文サイトを作成しました。

店舗ユーザでログイン後、お客様と従業員のページを分け、
従業員はホール・キッチン・管理者でそれぞれログインできるようにしています。

## 使い方－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－
店舗ユーザ（お客様）

その店舗のメニューを閲覧・注文、自分の席の注文履歴を閲覧出来るようにしています。

テストアカウント：

店舗名→レストラン

パスワード→restaurant

席番号→1

従業員ユーザ（ホール）－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－

その店舗の只今の注文状況の閲覧・注文メニューの提供状況を更新、本日の注文履歴の閲覧、各席の注文履歴の閲覧出来るようになっています。

テストアカウント：

店舗名→レストラン

パスワード→restaurant

パスワード（従業員ログイン画面のホールのログインフォームに入力）→hall

席番号（各席の注文履歴で使用）→1

従業員ユーザ（キッチン）－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－

その店舗の只今の注文状況の閲覧・注文メニューの調理状況を更新、本日の注文履歴の閲覧、各席の注文履歴の閲覧出来るようになっています。

テストアカウント：

店舗名→レストラン

パスワード→restaurant

パスワード（従業員ログイン画面のキッチンのログインフォームに入力）→kitchen

席番号（各席の注文履歴で使用）→1

従業員ユーザ（管理者）－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－

その店舗のユーザ管理（編集・削除・追加）、メニュー管理（編集・削除・追加）本日の注文履歴の閲覧、各席の注文履歴の閲覧、売上管理（１日ごとの売上・売れ数、１か月ごとの売上・売れ数の閲覧・出力）出来るようになっています。

テストアカウント：

店舗名→レストラン

パスワード→restaurant

氏名（従業員ログイン画面の管理者のログインフォームに入力）→マネージャー

パスワード（従業員ログイン画面の管理者のログインフォームに入力）→manager

席番号（各席の注文履歴で使用）→1

## 環境
XAMPP/MySQL/PHP


## データベース

データベース名：restaurant_order

テーブル

お使いのphpMyAdminに上のデータベースを作り、入っているDB.sqlをインポートしていただければお使いいただけるようになると思います。

