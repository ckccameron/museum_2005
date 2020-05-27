class Museum
  attr_reader  :name,
              :exhibits

  def initialize(name)
    @name = name
    @exhibits = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    @exhibits.reduce([]) do |acc|
      acc = patron.interests
      acc
    end
  end
end
