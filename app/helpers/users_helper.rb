module UsersHelper
  def show_errors(object, field_names)
    errors=[]
    field_names.each do |field_name|
      if object.errors.any?
        if !object.errors.messages[field_name].blank?
          errors.push(object.errors.messages[field_name].join(','))
        end
      end
    end
    errors.join(',')
  end
end
