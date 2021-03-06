class Backer

  attr_accessor :name, :backed_projects

  def initialize(name)
    @name=name
    @backed_projects =[]
  end

  def back_project(project)
    backed_projects << project
    project.add_backer(self)
  end

end

# When a backer has added a project to it's list of backed projects, that 
# project should also add the backer to it's list of backers. Refer back to 
# the Code Along about Collaborating Objects.