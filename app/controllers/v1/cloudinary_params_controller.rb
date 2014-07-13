class V1::CloudinaryParamsController < ApplicationController
  def show
    timestamp = params[:timestamp].to_i
    render json: {
      timestamp: timestamp,
      signature: Digest::SHA1.hexdigest(
        "timestamp=#{timestamp}#{Rails.application.secrets.cloudinary_secret}"
      ),
      api_key: Rails.application.secrets.cloudinary_key
    }
  end
end
