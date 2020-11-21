require 'pry'
class Project

    attr_reader :title
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def before_backers
        ProjectBacker.all.select {|backer| backer.project == self}
    end

    def backers
        before_backers.map {|backer| backer.backer}
    end
    

    

    


end
