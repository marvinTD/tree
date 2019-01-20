# frozen_string_literal: true

class YoutubeUrlsController < ApplicationController
  def index
    data = YoutubeUrl.order('updated_at DESC').first(25)
    render json: data
  end

  def create
    input = JSON.parse(request.body.read)
    if input['name'].nil? || input['url'].nil? || input['branch'].nil?
      render(json: { status: 400 }, status: :bad_request)
    else
      YoutubeUrl.create(name: input['name'], url: input['url'], branch: input['branch'])
      render(json: {}, status: :no_content)
    end
  end
end
