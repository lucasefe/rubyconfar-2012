module SessionHelper
  
  # def authenticated(model)
  #   @_model ||= {}
  #   @_model[model] ||= session[model.to_s] && model[session[model.to_s]]
  # end

  def authenticate(user)
    session[user.class.to_s] = user.id
  end

  def logged_in?
    !session['User'].nil?
  end

  def current_user
    User[session['User']]
  end

  def logout(model)
    session.delete(model.to_s)
    session.delete(:remember_for)

    @_model.delete(model) if defined?(@_model)
  end
end