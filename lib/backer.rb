require 'pry'

class Backer

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def before_backed_projects 
        ProjectBacker.all.select {|project| project.backer == self}

        #[#ProjectBacker, @projects  @title, @backers @name]
    end 

    def backed_projects
        before_backed_projects.map {|project| project.project}
    end

#we would need to iterate thru what we currently have & pull out just the projects associated w/ self instance


end
