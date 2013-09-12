require 'spec_helper'

describe ArticlesController do
	it "should call all on Article" do
		get :index
		
		Article.should_receive(:all).and_return([])
	end
end