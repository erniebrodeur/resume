class Projects
  include Creatable

  attribute name: :title, kind_of: String
  attribute name: :description, kind_of: String
  attribute name: :uri, kind_of: URI
  attribute name: :bullet_points, kind_of: Array

  def self.collection
    @@collection ||= []
  end

  def self.initialize
    content = File.read('data/projects.json')
    hash = Oj.load content
    hash.each { |project| add project }
    nil
  end

  def self.add(job)
    collection.push job
  end
end
