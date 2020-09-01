 class Backer

    attr_reader :name, :projectbacker

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def projectbackers
        ProjectBacker.all.select { |project| project.backer == self }
    end

    def backed_projects
        # ProjectBacker.all.select { |project| project.backer == self }
        projectbackers.map { |p| p.project }
    end



 end