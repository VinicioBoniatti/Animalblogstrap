module Paginable  
    protected

    def current_page  #current_page = (params[:page] || 1).to_i - estava em article_controller.rb - def index
        (params[:page] || 1).to_i
    end
end