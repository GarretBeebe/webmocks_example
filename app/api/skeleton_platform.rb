module SkeletonPlatform
  class API < Grape::API
    version 'v1', using: :header, vendor: 'Skeleton'
    format :json
    formatter :json, Grape::Formatter::ActiveModelSerializers

    mount SkeletonPlatform::Resources::Placeholder
  end
end
