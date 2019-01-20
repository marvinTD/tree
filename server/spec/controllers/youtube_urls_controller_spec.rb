# frozen_string_literal: true

require 'rails_helper'

RSpec.describe YoutubeUrlsController, type: :controller do
  describe '#index' do
    it 'gets the most recent 25 youtube urls, ordered by most recent first' do
      uuids = []
      25.times { build(:youtube_url).save }
      25.times do
        youtube_url = build(:youtube_url)
        uuids << youtube_url.id
        youtube_url.save
      end
      uuids.reverse!
      get :index
      uuids_from_request = JSON.parse(@response.body).collect { |d| d['id'] }
      expect(uuids_from_request).to eq(uuids)
    end
  end

  describe '#create' do
    it 'returns a 400 if name, url, or branch is not passed' do
      post :create, body: { name: nil, url: 'foo', branch: 'bar' }.to_json
      expect(@response.status).to eq(400)
      post :create, body: { name: 'foo', url: nil, branch: 'bar' }.to_json
      expect(@response.status).to eq(400)
      post :create, body: { name: 'foo', url: 'bar', branch: nil }.to_json
      expect(@response.status).to eq(400)
    end

    context 'valid request.body' do
      let(:name) { "Random Title #{rand(100..999)}" }
      let(:url) { "http://fake-tube.com/abc#{rand(100..999)}" }
      let(:branch) { "branch#{rand(100..999)}" }

      before do
        post :create, body: { name: name, url: url, branch: branch }.to_json
      end

      it 'saves the youtube url' do
        expect(YoutubeUrl.count).to eq(1)
      end

      it 'creates a youtube url with attributes' do
        # from: https://stackoverflow.com/questions/7905929/how-to-test-valid-uuid-guid/13653180#13653180
        uuid_regex = /^[0-9a-f]{8}-[0-9a-f]{4}-[1-5][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i
        data = YoutubeUrl.first

        expect(data.name).to eq(name)
        expect(data.url).to eq(url)
        expect(data.branch).to eq(branch)
        expect(uuid_regex.match?(data.id)).to be true
        expect(data.created_at).to be_a(ActiveSupport::TimeWithZone)
        expect(data.updated_at).to be_a(ActiveSupport::TimeWithZone)
      end

      it 'returns :no_content' do
        expect(@response.status).to eq(204)
      end
    end
  end
end
