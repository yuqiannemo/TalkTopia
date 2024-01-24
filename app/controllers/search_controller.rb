class SearchController < ApplicationController
  def index
    @search_query = params[:search]
    @results = search_results(@search_query)
  end

  private
  
  def search_results(query)
  tag_results = Tag.where("lower(name) LIKE ?", "%#{query.downcase}%")

  category_results = Category.where("lower(name) LIKE ?", "%#{query.downcase}%")

  tag_results + category_results
end
end