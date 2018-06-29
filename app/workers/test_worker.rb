class TestWorker
  include Sidekiq::Worker
  sidekiq_options queue: 'test'

  def perform(*args)
    puts "Teste de job"
  end
end
