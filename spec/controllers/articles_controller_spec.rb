require "rails_helper"

describe ArticlesController do
  describe "#index" do
    subject {get :index}

    it "should return success response" do
      subject
      expect(response).to have_http_status(:ok)
    end

    it "should return proper json" do
      create_list :article, 2
      subject
      Article.recent.each_with_index do |article, i|
        expect(json_data[i]["attributes"]).to eq(
        {"title"=> article.title,
        "content"=> article.content,
        "slug"=> article.slug})
      end
    end

    it "should return articles in proper order" do
      old_article = create :article
      new_article = create :article
      subject
      # pp old_article
      # pp new_article
      expect(json_data.first['id']).to eq(old_article.id.to_s)
      expect(json_data.last['id']).to eq(new_article.id.to_s)
    end

    it "should return paginate" do
      create_list :article, 3
      get :index, params: {page: 3, per_page: 1}
      expect(json_data.length).to eq 1
      pp json_data
      expect(json_data.first['id']).to eq(Article.recent.third.id.to_s)
    end
  end
end
