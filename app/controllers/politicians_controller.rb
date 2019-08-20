class PoliticiansController < ApplicationController
    before_action :find_politician, only: [:show, :edit, :update]

    def index
    @politicians = Politician.all
    end
    
    def show
    
    end

    def new
    @politician = Politician.new()
    end


    def create 
    @politician = Politician.create(politician_params)
        if @politician.valid?
        redirect_to("/")
        else
        flash[:errors] = @politician.errors.full_messages
        redirect_to(new_politician_path)
        end
    end

    def edit
    end

    def update
        @politician.update()
        if @politician.valid?
            redirect_to("/")
        else
            flash[:errors] = @politician.errors.full_messages
            redirect_to(edit_politician_path)
        end
    end

    private 

    def find_politician
        @politician = Politician.find(params[:id])
    end

    def politician_params
        permitted = params.require(:politician).permit(:first_name, :last_name, :state, :chamber, :party, :img_url)
    end

end
