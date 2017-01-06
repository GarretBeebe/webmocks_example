module SkeletonPlatform
  class Resources::Analytics < Grape::API
    resource :analytics do
      helpers do
        # def write_object(object)
        # my_analytics = Analytics.new
        # my_analytics.hash = object.to_json
        # end
      end

      post '/' do
        counter = 0
        if params[:object].is_a?(Array)
          params[:object].each do
            # write_object(object)
            counter += 1
          end
        else
          # write_object(params[:object])
          counter += 1
        end
        counter
      end
    end
  end
end
