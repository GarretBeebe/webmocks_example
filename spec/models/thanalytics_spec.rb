require 'spec_helper'

describe THAnalytics do
  before do
    @test_object = [{ name: 'test1', platform: 'java' }]
    @test_array_length_1 = [{ name: 'test1', platform: 'java' }]
    @test_array_length_2 = [{ name: 'test2', platform: 'java' }, { name: 'test3', platform: 'java' }]
    @test_array_length_3 = [
      { name: 'test1', platform: 'java' },
      { name: 'test2', platform: 'java' },
      { name: 'test3', platform: 'java' }
    ]
    stub_request(@test_object, '1')
    stub_request(@test_array_length_1, '1')
    stub_request(@test_array_length_2, '2')
    stub_request(@test_array_length_3, '3')
  end

  context '#emit' do
    my_analytics = THAnalytics.new
    it 'accepts a single object and returns a count' do
      expect(my_analytics.emit(@test_object).parsed_response.to_i).to eql(1)
    end

    it 'accepts an array of objects and returns a count' do
      expect(my_analytics.emit(@test_array_length_2).parsed_response.to_i).to eql(2)
    end
  end

  context '#enqueue' do
    my_analytics = THAnalytics.new
    it 'accepts a single object and returns a count' do
      expect(my_analytics.enqueue(@test_object)).to eql(1)
    end

    it 'accepts an array of objects and returns a count' do
      expect(my_analytics.enqueue(@test_array_length_2)).to eql(3)
    end
  end

  context '#flush' do
    my_analytics = THAnalytics.new
    it 'accepts a single object and returns a count' do
      expect(my_analytics.enqueue(@test_object)).to eql(1)
      expect(my_analytics.flush.parsed_response.to_i).to eql(1)
    end

    it 'accepts an array of objects and returns a count' do
      expect(my_analytics.enqueue(@test_array_length_2)).to eql(2)
      expect(my_analytics.flush.parsed_response.to_i).to eql(2)
    end

    it 'accepts an single object and an array of objects and returns a count' do
      expect(my_analytics.enqueue(@test_object)).to eql(1)
      expect(my_analytics.enqueue(@test_array_length_2)).to eql(3)
      expect(my_analytics.flush.parsed_response.to_i).to eql(3)
    end
  end

  def stub_request(object, body)
    WebMock.stub_request(:post, "http://localhost:8080/api/analytics").
      with(query: { object: object }).to_return(status: 200, body: body, headers: {})
  end
end
