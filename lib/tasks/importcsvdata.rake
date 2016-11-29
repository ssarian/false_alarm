namespace :csvimport do

  desc "Import CSV Data."
  task :import_csv_data => :environment do

    require 'csv'

    csv_file_path = '/path/to/your/file.csv'

    CSV.foreach(csv_file_path) do |row|

      p = Post.create!({
                           :title => row[0],
                           :content => row[1],
                           :tag_list => row[2].split('|'),
                       }
      )

    end

  end

end
