module UsersHelper
	# Episode 40
	# Move this to the Application Helper in order to share with other model view templates
	def admin_area(&block) # being called in the user show template
		# if current_user.admin?
		if true
			concat content_tag(:span, capture(&block), class: 'admin')
		end
	end
end
