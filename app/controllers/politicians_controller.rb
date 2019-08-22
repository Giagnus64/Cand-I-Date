class PoliticiansController < ApplicationController
    before_action :authorized
    before_action :find_politician, only: [:show, :edit, :update]
    
    
    #page to swipe on
    def index
        @politicians =  @current_user.has_not_seen
       
        @politician = @politicians.sample
    end

    #politician's show page
    def show
    
    end
    #make a politician
    def new
    @politician = Politician.new()
    @state_array = Politician.state_array
    @chamber_array = Politician.chamber_array
    @party_array = Politician.party_array
    end

    #make a politician
    #also assign issues to that politician
    def create 
    @politician = Politician.create(politician_params)
        if @politician.valid?
        redirect_to("/")
        else
        flash[:errors] = @politician.errors.full_messages
        redirect_to(new_politician_path)
        end
    end
 
    #edit politician stats page
 
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
