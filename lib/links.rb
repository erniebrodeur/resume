class Links
  include Creatable

  attribute name: :caption, kind_of: String
  attribute name: :uri, kind_of: URI

  def self.collection
    @@collection ||= []
  end

  def self.initialize
    content = File.read('data/links.json')
    hash = Oj.load content
    hash.each { |link| add link }
    nil
  end

  def self.add(job)
    collection.push job
  end
end
