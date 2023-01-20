# frozen_string_literal: true

class MyFavoritesController < ApplicationController
  def new
    @my_favorite = MyFavorite.new
  end

  def mark_joke_as_favorite
    @my_favorite = MyFavorite.new(my_favorite_params)
    respond_to do |format|
      if @my_favorite.save
        format.html { redirect_to root_path, notice: 'my_favorite was successfully created.' }
        format.json { render :show, status: :created, location: @my_favorite }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @my_favorite.errors, status: :unprocessable_entity }
      end
    end
  end

  def my_favorite_params
    params.permit(:user_id, :joke_id)
  end
end
