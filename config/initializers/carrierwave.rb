
# :aws_access_key_id => ENV['S3_KEY']
# :aws_secret_access_key => ENV['S3_SECRET']
# :region => ['S3_REGION']
# :config.fog_directory = ENV['S3_BUCKET']

CarrierWave.configure do |config|
    config.root = Rails.root.join('tmp')
    config.cache_dir = 'carrierwave'
    config.fog_credentials = {
        :provider               => 'AWS',            # required
        :aws_access_key_id      => ENV['S3_KEY'],    # required
        :aws_secret_access_key  => ENV['S3_SECRET'], # required
        :region                 => ENV['S3_REGION'], # optional, defaults to 'us-east-1'
        #:host                  => nil,              # optional, defaults to nil
        #:endpoint              => nil               # optional, defaults to nil
    }

    config.fog_directory   = ENV['S3_BUCKET']     # required
    #config.fog_public     = true          # optional, defaults to true
    #config.fog_attributes = {}            # optional, defaults to {}
end

