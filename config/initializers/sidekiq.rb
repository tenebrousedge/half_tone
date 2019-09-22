
REDIS_CONFIG = {
  url: 'redis://redis:6379/0',
  password: ENV["REDIS_PASSWORD"]
}
Sidekiq.configure_server do |config|
  config.redis = REDIS_CONFIG
end

Sidekiq.configure_client do |config|
  config.redis = REDIS_CONFIG
end
