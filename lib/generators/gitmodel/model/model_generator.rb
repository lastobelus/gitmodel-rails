module Gitmodel
    class ModelGenerator < Rails::Generators::NamedBase
      source_root File.expand_path('../templates', __FILE__)

      def create_model
        create_file(Rails.root.join("app", "models", "#{name.underscore.singularize}.rb")) do
<<-eos
class #{name.camelize.singularize}
  include GitModel::Persistable

end

eos
  
        end
      end    

    end
end
