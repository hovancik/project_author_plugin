require "redmine"
require "rubygems"

Project.send(:include, ProjectAuthorPlugin::ProjectPatch)
User.send(:include, ProjectAuthorPlugin::UserPatch)


Redmine::Plugin.register :project_author_plugin do
  name 'Project Author Plugin'
  author 'Jan Hovancik'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  #url 'http://example.com/path/to/plugin'
  #author_url 'http://example.com/about'
end
