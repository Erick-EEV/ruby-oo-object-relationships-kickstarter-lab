require 'pry'
class Backer

    @@all = []
    attr_reader :name
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

    def backed_projects
        ProjectBacker.all.select do |value|
             value.backer == self
        end.map do |value|
            value.project
        end
           
        #go through join class
            #find projects associated with backer class
            #return them in an array
    end 





end