module Features
  module PoltergeistHelper
    def self.included(base)
      base.class_eval do
        self.use_transactional_fixtures = false if metadata[:js]
      end
    end
  end
end
