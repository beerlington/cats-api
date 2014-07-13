class V1::CloudinaryParamsController < ApplicationController
  def show
    timestamp = params[:timestamp].to_i
    render json: {
      timestamp: timestamp,
      signature: Digest::SHA1.hexdigest(
        "timestamp=#{timestamp}#{ENV['API_SECRET']}"
      ),
      api_key: ENV['API_KEY']
    }
  end
end
