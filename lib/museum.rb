class Museum
  attr_reader  :name,
              :exhibits,
              :patrons

  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
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

  def admit(patron)
    @patrons << patron
  end
end
