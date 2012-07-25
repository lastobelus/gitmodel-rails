module Gitmodel
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def create_config
        create_file(Rails.root.join("config", "gitmodel.yml") do
<<-eos
git:
  db_root:   db/gitmodel
  default_branch: master


eos
  
        end
      end    

    end
end