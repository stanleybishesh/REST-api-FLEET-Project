class ContactsController < ApplicationController
    def index
        @contacts = Contact.all
        render json: @contacts
    end

    def new
        @contact = Contact.new
    end

    def create
        @contact = Contact.new(contact_params)

        if @contact.save
            render json: @contact, status: :created
        else
            render json: @contact, status: :unprocessable_entity
        end
    end

    private
    def contact_params
        params.require(:contact).permit(:name,:email,:address,:message)
    end
end
