# frozen_string_literal: true

FactoryBot.define do
  factory :youtube_url, class: YoutubeUrl do
    id { SecureRandom.uuid }
    name { "Random Title #{rand(100..999)}" }
    url { "http://fake-tube.com/abc#{rand(100..999)}" }
    branch { "branch#{rand(100..999)}" }
  end
end
