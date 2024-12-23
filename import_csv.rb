require 'csv'

def import_csv(file, symbolize_names: true)
  data = []
  CSV.foreach(file, headers: true) do |row|
    if symbolize_names
      data << row.to_h
      .transform_keys { |key| key.downcase.gsub(' ', '_').to_sym }
    else
      data << row.to_h
    end
  end
  data
end