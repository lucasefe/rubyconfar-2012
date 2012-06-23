module Helper

  def flash
    session['flash'] ||= {}
  end

  def input_type parent_param, object, field, options = nil
    input 'text', parent_param, object, field, options
  end

  def input_area parent_param, object, field, options = nil
    input 'area', parent_param, object, field, options
  end

  def input type, parent_param, object, field, options = nil
    options ||= {}
    partial("shared/inputs/#{type}", {
      parent: parent_param,
      object: object,
      field: field,
      label_name: options.fetch(:label, field) } )
  end

end
