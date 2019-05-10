CarrierWave.configure do |config|	
	# config.fog_credentials = {
	# 	:provider => 'AWS',
	# 	:aws_access_key_id => ENV['HAIRFOLIO_AWS_ACCESS_KEY'],
	# 	:aws_secret_access_key => ENV['HAIRFOLIO_AWS_SECRET_ACCESS_KEY'],
	# 	:region => 'us-west-1' 
	# }
	# config.fog_directory = ENV['HAIRFOLIO_AWS_BUCKET_NAME']
	# config.storage = :fog	
	# config.storage = :file
	# config.enable_processing = Rails.env.development?
end