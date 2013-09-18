require 'spec_helper'

describe ArticlesController do
	it "should call all on Article" do
		Article.should_receive(:all)
		get :index
	end

	it "should assign articles to @articles" do
		Article.should_receive(:all).and_return([])
		get :index
		expect(assign[:articles]).to eq([])
		#assigns[:articles].should =~ [article1, article2]
	end

	it 'should return all the articles' do
		article1 = FactoryGirl.create(:article)
		article2 = FactoryGirl.create(:article, :title => "another article")

		get :index # calls the method
		assigns[:articles].should_received =~ [article1, article2, article3]
	end

describe "#create" do
	let(:article_params) {{"title" => "title", "body" -> "body"}}
	let!(:model) {FactoryGirl.build(:article)}

		it "should call new on article" do

			Article.should_receive(:new).and_return(model)

			#Factory Girl way of doing it (good for numerous attributes)
			#params = FactoryGirl.attributes_for(:article)			

			post :create, "article" => article_params
		end

		it "should assign new article" do
			Article.should_receive(:new).and_return(model)
			post :create, "article" => article_params

			expect(assigns[:article]).to eq(model)
		end
	end

end