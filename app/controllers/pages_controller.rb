# frozen_string_literal: true

class PagesController < ApplicationController
  def index
    @posts = Post.order('updated_at DESC')
  end
end
