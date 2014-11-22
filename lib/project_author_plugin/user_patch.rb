require_dependency "users_controller"

module ProjectAuthorPlugin
	module UserPatch
		def self.included(base)
			base.class_eval do
				has_many :project_authors
			end
		end
	end
end