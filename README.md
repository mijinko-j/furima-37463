## テーブル設計

## users テーブル

| Column          | Type   | Options                   |
| --------------- | ------ | ------------------------- |
| nickname        | string | null: false               |
| email           | string | null: false, unique: true |
| password        | string | null: false               |
| last_name       | string | null: false               |
| first_name      | string | null: false               |
| last_name_kana  | string | null: false               |
| first_name_kana | string | null: false               |
| birth_day       | date   | null: false               |

### Association

- has_many : items
- has_many : oders
- has_one :shipping_address


## items テーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| name                   | string     | null: false                    |
| info                   | text       | null: false                    |
| category_id            | string     | null: false                    |
| sales_status_id        | text       | null: false                    |
| shipping_fee_status_id | text       | null: false                    |
| prefecture_id          | text       | null: false                    |
| scheduled_delivery_id  | text       | null: false                    |
| price                  | interger   | null: false                    |
| user_id                | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :order


## orders テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user_id | references | null: false, foreign_key: true |
| item_id | references | null: false, foreign_key: true |

### Association

- belongs_to : user
- belongs_to : item


## shipping_address テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| postal_code  | string     | null: false                    |
| prefecture   | text       | null: false                    |
| addresses    | text       | null: false                    |
| building     | text       | null: false                    |
| phone_number | text       | null: false                    |
| user_id      | references | null: false, foreign_key: true |

### Association

- belongs_to : user