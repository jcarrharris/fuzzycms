require 'spec_helper'

describe ArticlesController do
	it "should call all on Article" do
		articles_controller use ArticleStub instead
	end
end