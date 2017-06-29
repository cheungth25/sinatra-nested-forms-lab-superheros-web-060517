class Team
attr_accessor :name, :motto, :members
@@all = []

  def initialize(args)
    @name = args[:name]
    @motto = args[:motto]
    @members = []
    self.create_members(args[:members])
    @@all << self
  end

  def self.all
    @@all
  end

  def create_members(members_array)
    members_array.each do |member|
      @members << Member.new(member)
    end
  end

end
