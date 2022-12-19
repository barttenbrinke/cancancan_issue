class BrokenDocumentsController < ApplicationController
  authorize_resource :document

  def index
    render "documents/index"
  end

  def new
    render "documents/new"
  end

  def show
    render "documents/show"
  end

end
