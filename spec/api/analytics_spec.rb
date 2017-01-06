require 'spec_helper'

RSpec.describe SkeletonPlatform::API do
  before(:each) do
    Rails.cache.clear
  end

  describe 'POST /api/analytics' do
    it 'creates a analytics object from a single hash' do
      test_object = { object: { name: "test", platform: "java" }}.to_json
      post '/api/analytics', test_object, 'CONTENT_TYPE' => 'application/json'
      expect(last_response.body).to eq "1"
    end

    it 'creates a analytics object from an array' do
      test_array = {object: [{ name: "test", platform: "java" }, { name: "test1", platform: "java1" }]}.to_json
      post '/api/analytics', test_array, 'CONTENT_TYPE' => 'application/json'
      expect(last_response.body).to eq "2"
    end
  end
end
