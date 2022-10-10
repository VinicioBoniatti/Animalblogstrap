class CommentsController < ApplicationController
    before_action :set_article
    before_action :authenticate_user!

    def create
        @article.comments.create(comment_params.to_h.merge!({user_id: current_user.id}))
        redirect_to article_path(@article), notice: 'Comment successfully created.'
    end

    def destroy
        comment = @article.comments.find(params[id])
        authorize comment

        comment.destroy
        redirect_to article_path(@article), notice: 'Comment successfully destroy'
    end

    private

    def comment_params
        params.require(:comment).permit(:body)
    end

    def set_article
        @article = Article.find(params[:article_id])
    end
end
