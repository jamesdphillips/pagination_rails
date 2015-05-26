class PaginationRails::InstallGenerator < ::Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  desc 'Installs Pagination for Rails.'

  def install
    copy_file 'app/controllers/concerns/respond_with_page.rb'
    directory 'app/services/offset_pagination'
    directory 'app/services/pagination'
  end
end
