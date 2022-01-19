class ApplicationController < ActionController::Base
before_action :findcat
def findcat
if user_signed_in?
@category=Category.findbyurl(url: request.path)||Category.find_or_create_by(title:'RSMA Guyane',url: '/')
end
end
end
