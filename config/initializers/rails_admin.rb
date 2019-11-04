RailsAdmin.config do |config|
  config.parent_controller = '::ApplicationController'
  config.main_app_name = "Half◐Tone"
  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :author
  end
  config.current_user_method(&:current_author)

  ## == CancanCan ==
  # config.authorize_with :cancancan

  # == Pundit ==
  config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new do
      controller do
        proc do
          if request.get? # NEW
            @object = @abstract_model.new
            @authorization_adapter && @authorization_adapter.attributes_for(:new, @abstract_model).each do |name, value|
              @object.send("#{name}=", value)
            end
            if object_params = params[@abstract_model.param_key]
              sanitize_params_for!(request.xhr? ? :modal : :create)
              @object.set_attributes(@object.attributes.merge(object_params.to_h))
            end
            respond_to do |format|
              format.html { render @action.template_name }
              format.js   { render @action.template_name, layout: false }
            end

           elsif request.post? # CREATE

            @modified_assoc = []
            @object = @abstract_model.new
            sanitize_params_for!(request.xhr? ? :modal : :create)

            @object.set_attributes(params[@abstract_model.param_key])
            @authorization_adapter && @authorization_adapter.authorize(:create, @abstract_model, @object)
            if @object.class.included_modules.include?(Ownable) && @object.author.blank?
              @object.author = current_author
            end
            if @object.save
              @auditing_adapter && @auditing_adapter.create_object(@object, @abstract_model, _current_user)
              respond_to do |format|
                format.html { redirect_to_on_success }
                format.js   { render json: {id: @object.id.to_s, label: @model_config.with(object: @object).object_label} }
              end
            else
              handle_save_error
            end

          end
        end  
      end
    end
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  # config.excluded_models = %w[Author]
  config.included_models = %w[Author Comic Page Book Background CustomStyle]
end
