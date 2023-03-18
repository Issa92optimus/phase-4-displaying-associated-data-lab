class ItemsController < ApplicationController
    def show
        item = Item.find(params[:id])
        render json: item, include: :user
    end

    def index
        items = Item.all
        render json: items, include: :user
    end
end
