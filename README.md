# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false,unique: true |
| encrypted_password | string | null: false |
| name               | string | null: false |
| profile            | text   | null: false |
| occupation         | text   | null: false |
| position           | text   | null: false |


## comments テーブル

| Column    | Type      | Options                        |
| ------    | ------    | -----------                    |
| content   | text      | null: false                    |
| phototype | reference | null: false, foreign_key: true |
| user      | reference | null: false, foreign_key: true |


## phototypes テーブル

| Column     | Type       | Options                        |
| ------     | ---------- | ------------------------------ |
| title      | references | null: false                    |
| catch_copy | text       | null: false, foreign_key: true |
| concept    | text       | null: false                    |
| user       | references | null: false, foreign_key: true |
