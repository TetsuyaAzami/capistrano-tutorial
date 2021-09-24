namespace :create_user do
  desc "ユーザー名、メールアドレス、パスワードを入力し、ユーザーアカウントを作成する"
  task :user, ['name','email','password'] => :environment do |_, args|
    User.create!(
      name:     args.name,
      email:    args.email,
      password: args.password
    )
    puts "#{args.name}を作成しました。"
  end
end
