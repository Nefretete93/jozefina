class WelcomeController < ApplicationController
  def index
    @last_blogs = Article.last_blogs
  end

  def about
  end

  def contact
  end

  def pricing
  end

  def treatments
  end
end
