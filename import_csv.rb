require 'csv'

def import_csv(file, symbolize_names: true)
  data = []
  file = File.expand_path(file) if file.start_with?('~')
  CSV.foreach(file, headers: true) do |row|
    if symbolize_names
      data << row.to_h
        .transform_keys { |key| key&.downcase&.gsub(' ', '_')&.to_sym }
    else
      data << row.to_h
    end
  end
  data
end