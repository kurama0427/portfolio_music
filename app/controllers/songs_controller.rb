require 'net/http'
require 'uri'
require 'json'
class SongsController < ApplicationController

  def search_area(form_words, retry_count = 10)
    raise ArgumentError, 'too many HTTP redirects' if retry_count == 0
    form_words = URI.encode(form_words)
    uri = URI.parse("https://itunes.apple.com/search?term=#{form_words}&country=jp&lang=ja_jp&limit=10&media=music")

    begin
      response = Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == 'https') do |http|
        http.open_timeout = 5
        http.read_timeout = 10
        http.get(uri.request_uri)
      end

      case response
        when Net::HTTPSuccess
          json = JSON.parse(response.body)
          if json['results_returned'] == 0
            nil
          else
            json
          end

        when Net::HTTPRedirection
          location = response['location']
          Rails.logger.error(warn "redirected to #{location}")
          search_area(form_words, start_date, end_date, retry_count - 1)
        else
          Rails.logger.error([uri.to_s, response.value].join(" : "))
      end

    rescue => e
      Rails.logger.error(e.message)
      raise e
    end
  end
  
  def song_index
  end
  
  def index

    if params[:form_words].blank?
      params[:form_words] = ","
    else
      params[:form_words] = params[:form_words].gsub(/( |　)+/, ",")
    end

    #ライブラリをnewしてメソッドを呼び出す
    @result = search_area(params[:form_words])
    render 'song_index'
  end
end