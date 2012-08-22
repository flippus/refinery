Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :calendars do
    resources :calendars, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :calendars, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :calendars, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end


  # Frontend routes
  namespace :locations do
    resources :locations, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :locations, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :locations, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end


  # Frontend routes
  namespace :categories do
    resources :categories, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :categories, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :categories, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
