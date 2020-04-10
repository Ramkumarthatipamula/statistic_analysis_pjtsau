class Statistic < ApplicationRecord
  has_one_attached :excel_file

  require 'roo'

  def excel_calculation_part
    result = []
    file_path = ActiveStorage::Blob.service.send(:path_for, self.excel_file.key)
     xlsx = Roo::Spreadsheet.open(file_path, extension: :xlsx)
     spreadsheet = xlsx.sheet("Sheet1")
     (1..self.no_of_treatments).each do |i|
       result << spreadsheet.row(i) + [spreadsheet.row(i).sum]
     end
     result
  end
end
