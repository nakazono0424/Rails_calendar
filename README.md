# README

# 環境
|||
|:---|:---|
|Ruby|2.6.5|
|Rails|5.2.4|

# Install
`$ bundle install --path vendor/bundle`

# Usage
`$ bundle exec rails server -p 3000`

"http://localhost:3000/events" にアクセスする

# 現状
* 日付に関しては，開始日時のみ設定できる．
* 終了日時は設定できない．
* "http://localhost:3000/events/add" で予定を追加するとき，一度ページを更新する必要がある．
* formタグ内にtype="submit"以外のinputタグが1つしかない場合、type="submit"の内容は送信されないらしい
* なぜ更新すると送れるのかは不明
