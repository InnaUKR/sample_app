class User
	attr_accessor :name, :email #атрибуты доступа 
	def initialize(attributes = {})		#вызывается при User.new
		@name = attributes[:name]
		@email = attributes[:email]
	end
	
	def formatted_email
		"#{@name} #{@email}"
	end
end
