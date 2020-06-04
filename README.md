# Table Tennis Spot概要
Table Tennis Spotは、カジュアルに卓球が楽しめる場所を共有するアプリケーションです。
![サンプル](TT-spot.jpg)

![サンプル](TT-spot2.jpg)

## 本番環境
https://ttspot.herokuapp.com/

## テストユーザー
メールアドレス： pingpong@gmail.com  
パスワード： test1234

# DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|content|text|null: false|

### Association
- has_many :images
- has_many :comments

## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|img|string|null: false|
|post_id|integer|null: falsem foreign_key: true|
### Association
- belongs_to :post
