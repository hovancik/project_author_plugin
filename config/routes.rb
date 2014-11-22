# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

post 'project_authors', :to => 'project_authors#create'
post 'project_authors/:id/update', :to => 'project_authors#update'

