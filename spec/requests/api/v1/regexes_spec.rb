require 'rails_helper'

# logger
Rails.logger = Logger.new(STDOUT)

# SQL
# ActiveRecord::Base.logger = Logger.new($stdout) # SQLを出力
# ActiveRecord::Base.verbose_query_logs = true # SQLがコード上のどこで実行されたかを出力する

RSpec.describe "Regexes", type: :request do
  it '全てのポストを取得する' do
    FactoryBot.create_list(:regex, 10)

    get '/api/v1/regexes'
    json = JSON.parse(response.body)

    # リクエスト成功を表す200が返ってきたか確認する。
    expect(response.status).to eq(200)

    # 正しい数のデータが返されたか確認する。
    expect(json['data'].length).to eq(10)
  end
end