namespace :run do
  desc 'Run all linters and test suites'
  task all: ['lint:all','rspec:run']
  desc 'Run rspec and karma'
  task tests: ['rspec:run']
end
