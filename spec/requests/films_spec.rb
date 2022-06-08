require 'rails_helper'

RSpec.describe "Films", type: :request do
  describe "GET/auto_complete" do
    let!(:film)  {Film.create(title: 'demo title')}
    Film.reindex
    should 'return title suggestions' do
      get(auto_complete_path, params: {search: 'dem'})
      expect(JSON.parse(response.body)).to eq([film.title])
    end	
  end
end