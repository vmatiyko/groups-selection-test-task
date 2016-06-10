require 'csv'

Group.delete_all

csv_text = File.read('public/groups/data.csv')
csv = CSV.parse(csv_text, headers: true)
csv.each do |row|
  attrs      = row.to_hash
  id         = attrs['id'].to_i
  name       = attrs['name']
  balance    = attrs['balance'].to_f
  is_private = attrs['private'] == 'Y' ? true : false
  
  Group.create(id: id, name: name, balance: balance, is_private: is_private)
end
