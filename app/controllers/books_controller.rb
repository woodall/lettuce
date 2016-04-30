class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  # GET /budget_cateogries
  # GET /budget_cateogries.json
  def index
    @books = Book.all
  end

  # GET /budget_cateogries/1
  # GET /budget_cateogries/1.json
  def show
  end

  # GET /budget_cateogries/new
  def new
    @book = Book.new
  end

  # GET /budget_cateogries/1/edit
  def edit
  end

  # POST /budget_cateogries
  # POST /budget_cateogries.json
  def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Budget cateogry was successfully created.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /budget_cateogries/1
  # PATCH/PUT /budget_cateogries/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'Budget cateogry was successfully updated.' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /budget_cateogries/1
  # DELETE /budget_cateogries/1.json
  def destroy
    name = @book.name
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: "#{name} was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:name, :tag, :note, :user_id, :family_id)
    end
end
