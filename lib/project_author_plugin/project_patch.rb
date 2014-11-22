require_dependency "projects_controller"

module ProjectAuthorPlugin
	module ProjectPatch
		def self.included(base)
			base.class_eval do
				has_one :project_author
			end
		end
	end
end