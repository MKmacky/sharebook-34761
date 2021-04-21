# sharebookテーブル設計

## usersテーブル

| Column   | Type    | Options     |
| -------- | ------- | ----------- |
| email    | string  | null: false |
| password | string  | null: false |
| name     | string  | null: false |
| age      | integer | null: false |
| position | integer | null: false |

### Association

has_many :books
has_many :comments


## booksテーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| title     | string     | null: false                    |
| genre     | integer    | null: false                    |
| content   | text       | null: false                    |
| recommend | text       | null: false                    |
| image     | string     | null: false, ActiveStorage     |
| user      | references | null: false, foreign_key: true |

### Association

belongs_to :user
has_many   :comments


## commentsテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| text   | text       | null: false                    |
| user   | references | null: false, foreign_key: true |
| book   | references | null: false, foreign_key: true |

### Association

belongs_to :user
belongs_to :book