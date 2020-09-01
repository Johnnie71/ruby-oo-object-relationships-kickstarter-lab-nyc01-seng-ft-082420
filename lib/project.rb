 

 class Project

    attr_reader :title, :projectbacker

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)

    end

    def projectbackers
        ProjectBacker.all.select { |p| p.project == self }
    end

    def backers
        # ProjectBacker.all.select { |project| project.backer == self }
        projectbackers.map { |p| p.backer }
    end





 end