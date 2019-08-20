class IssuesController < ApplicationController
=begin
    before_action :find_issue, only: [:show]

    def index
    @issues = Issue.all
    end
    
    def show
    end

    def new
    @issue = Issue.new()
    end


    def create 
    @issue = Issue.create(issue_params)
        if @issue.valid?
        redirect_to("/")
        else
        flash[:errors] = @issue.errors.full_messages
        redirect_to(new_issue_path)
        end
    end

    private 

    def find_issue
        @issue = issue.find(params[:id])
    end

    def issue_params
        permitted = params.require(:issue).permit(:topic, :approval_statement, :disapproval_statement)
    end
=end
end
