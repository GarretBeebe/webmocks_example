class THAnalytics
  def initialize
    @queue = []
  end

  def emit(object)
    response = HTTParty.post('http://localhost:8080/api/analytics', query: { object: object })
    response
  end

  def enqueue(object)
    @queue.push(object)
    @queue = @queue.flatten if object.is_a?(Array)
    @queue.length
  end

  def flush
    response = emit(@queue)
    @queue = []
    response
  end
end
