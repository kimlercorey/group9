# config/initializers/carrierwave.rb
CarrierWave.configure do |config|

  config.fog_credentials = {
    # S3 USER
    :provider               => 'AWS',
    :aws_access_key_id      => ENV['S3_KEY'], 
    :aws_secret_access_key  => ENV['S3_SECRET'],
    :region                 => ENV['S3_REGION'],
  }
  config.fog_directory  = ENV['S3_LOCATION']
  config.fog_public     = true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}
end
