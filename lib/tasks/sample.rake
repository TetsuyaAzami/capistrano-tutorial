namespace :sample do
  desc "TODO"
  task foo: :bar do
    puts 'This is a main task.'
  end
  task :bar do
    puts 'This is a prerequisite task'
  end
end
