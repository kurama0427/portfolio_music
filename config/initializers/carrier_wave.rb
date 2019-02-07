if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Amazon S3用の設定
      :provider              => 'AWS',
      :region                => 'ap-northeast-1',     # 例: 'ap-northeast-1'
      :aws_access_key_id     => 'AKIAJXYG46J7STG354CQ',
      :aws_secret_access_key => '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'
    }
    config.fog_directory     =  'kuromiportfolio2'
    config.cache_storage = :fog
  end
end