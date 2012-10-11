require 'rails'
require 'gitmodel'

module GitmodelRails
  class Railtie < ::Rails::Railtie #:nodoc:
    initializer 'gitmodel-rails' do |app|
      
      gitmodel_config_file = Rails.root.join("config", "gitmodel.yml")
      
      if File.exist?(gitmodel_config_file)     
        gitmodel_config         = YAML.load_file(gitmodel_config_file)
        gitmodel_config         = gitmodel_config.is_a?(Hash) ? gitmodel_config : {}
        GitModel.db_root        = gitmodel_config.fetch("gitmodel", nil).try(:fetch, "db_root", GitModel.db_root)
        GitModel.serializer     = gitmodel_config.fetch("gitmodel", nil).try(:fetch, "db_root", GitModel.serializer)
        GitModel.serializer     = GitModel.serializer.constantize if GitModel.serializer.kind_of?(String)
        GitModel.default_branch = gitmodel_config.fetch("gitmodel", nil).try(:fetch, "default_branch", GitModel.default_branch)
        GitModel.git_user_name  = gitmodel_config.fetch("gitmodel", nil).try(:fetch, "git_user_name", GitModel.git_user_name)
        GitModel.git_user_email = gitmodel_config.fetch("gitmodel", nil).try(:fetch, "git_user_email", GitModel.git_user_email)
        GitModel.memcache_servers   = Array.wrap gitmodel_config.fetch("gitmodel", nil).try(:fetch, "memcache_servers", nil)
        GitModel.memcache_namespace = gitmodel_config.fetch("gitmodel", nil).try(:fetch, "memcache_namespace", GitModel.git_user_email)
      
        GitModel.db_root        = "#{Rails.root.join(GitModel.db_root)}"
      
        unless File.exist?(GitModel.db_root)
          GitModel.create_db!
        end
      
      end
      
    end
  end
end