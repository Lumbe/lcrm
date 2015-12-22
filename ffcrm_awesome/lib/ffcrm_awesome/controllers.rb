LeadsController.class_eval do
  protect_from_forgery with: :exception, except: [:create]
  prepend_before_filter :auth_user_before_filter, only: [:create]

  def auth_user_before_filter
    if request.post? && !params[:authorization].blank? && !params[:token].blank?
      user = User.find_by_password_hash_and_password_salt(params[:authorization], params[:token])
      return unless user
      # Implant @current_user so that :require_user filter becomes a noop.
      params[:lead][:user_id] ||= user.id.to_s
      instance_variable_set("@current_user", user)
      logger.info(">>> web-to-lead: creating lead for user " + user.inspect)
    end
  end
end


# [Account, Campaign, Contact, Lead, Opportunity, Task].each do |model|
#   controller = (model.name.pluralize + 'Controller').constantize
#   controller.class_eval do
#     prepend_before_filter :auth_user_before_filter, only: [:create]
#
#     def auth_user_before_filter
#       if request.post? && !params[:authorization].blank? && !params[:token].blank?
#         user = User.find_by_password_hash_and_password_salt(params[:authorization], params[:token])
#         return unless user
#         # Implant @current_user so that :require_user filter becomes a noop.
#         params[:lead][:user_id] ||= user.id.to_s
#         instance_variable_set("@current_user", user)
#         logger.info(">>> web-to-lead: creating lead for user " + user.inspect)
#       end
#     end
#
#   end
# end