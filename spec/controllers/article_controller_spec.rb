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
	end

end