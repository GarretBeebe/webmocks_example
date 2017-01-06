module SkeletonPlatform
  class Resources::Placeholder < Grape::API
    resource :placeholder do
      get do
        return { test: 'test' }
      end
    end
  end
end
