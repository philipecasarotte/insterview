OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1469979443258448', '84d91f9b951bc0ae9e7b58f35dd0617f'
end