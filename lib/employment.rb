class Employment
  include Creatable

  attribute name: :company_name, kind_of: String
  attribute name: :start_date, kind_of: String
  attribute name: :end_date, kind_of: String
  attribute name: :location, kind_of: String
  attribute name: :bullet_point, kind_of: Array

  def self.collection
    @@collection ||= []
  end

  def self.initialize
    content = File.read('data/employment.json')
    hash = Oj.load content
    hash.each do |job|
      add job
    end
  end

  def self.add(job)
    collection.push job
  end
end
