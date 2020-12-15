FactoryBot.define do                               # tweetのFactoryBotを作成
  factory :tweet do
    text {Faker::Lorem.sentence}                   # Faker  ランダムな値(ここではsentence)を作成
    image {Faker::Lorem.sentence}                  # Lorem  諸分野で用いられるダミーテキスト
    association :user                              # tweetはuserと結びつくためassociationので結びつける
  end
end
