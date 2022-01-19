class WelcomeController < ApplicationController
  layout 'search', only: [:mysearch]
  layout 'category', only: [:category]
include Rails.application.routes.url_helpers

  protect_from_forgery except: [:search]
  def category
    @category=Cat.find(params[:id])
  end
  def myroute
    @category=Category.find(params[:catid])
    @category.cats << Cat.find_or_create_by(name: params[:cat].downcase)
    @category.save
    redirect_to @category.url
  end
  def index
  end 
  def search
    redirect_to mysearch_path+'?'+search_params.to_query 
  end
  def mysearch
@mycat=Category.new(search_params)
@results=[]
librbfiles = File.join( "app", "views","**", "*.html.erb")
if params[:areas] && params[:areas].include?('categories')
Cat.findbyname(params[:searchword]).each do |mycat|
@results.push([mycat.name,mycat.url,nil,"Catégorie"])
end
end
if (!params[:areas]) || (params[:areas] && params[:areas].include?('content'))
Dir.glob(librbfiles).select{|x|!x.include?("/layouts/") && !x.include?("/_") }.each do |h|
content=ActionController::Base.helpers.strip_tags(File.read(Rails.root.to_s+'/'+h))
if content && params[:searchword] && content.downcase.include?(params[:searchword].downcase)
k=content.downcase.index(params[:searchword].downcase)
text=content[(k-170)..(k+170)]
path=h.split('/')
mycat=Category.findbyurlstr(url_for(controller: path[-2], action: path[-1].gsub(".html.erb","")))
if mycat
@results.push([mycat.title,mycat.url,text,(mycat.cats.length > 0 ? mycat.cats.pluck(:name).join(', ') : nil)])
end

end
end
end
  end
  private
  def search_params
    params.permit(:searchword, :searchphrase, :Itemid,:limit,:ordering,:areas=>[])
  end  
end
