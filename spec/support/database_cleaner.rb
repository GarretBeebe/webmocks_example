DatabaseCleaner.strategy = :truncation, {:except => %w[]}

RSpec.configure do |config|
  config.use_transactional_fixtures = true
  config.before(:suite) do
    begin
      DatabaseCleaner.start
    ensure
      DatabaseCleaner.clean
    end
  end
end
