FactoryBot.define do                                                       # userのFactoryBotを作成
    nickname              {Faker::Name.initials(number: 2)}                # Faker  ランダムな値を作成
    email                 {Faker::Internet.free_email}
    password              {Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
  end
end