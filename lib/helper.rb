require 'redcarpet'

module Helper

  def biography_from(speaker)
    text = speaker.send("bio_#{current_locale}")
    rndr = Redcarpet::Markdown.new(Redcarpet::Render::HTML.new)
    rndr.render(text)
  end

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
      type: type_for(field),
      placeholder_name: options.fetch(:placeholder, field),
      label_name: options.fetch(:label, field) } )
  end

  def type_for(field)
    if field.to_s.include?('email')
      'email'
    else
      'text'
    end
  end
end
