class WorkingDocumentsController < ApplicationController
  authorize_resource class: Document

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
