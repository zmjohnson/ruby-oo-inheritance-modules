require_relative './dance_module.rb'
require_relative './class_methods_module.rb'
require_relative './fancy_dance.rb'


class Kid

#We will include our fancy_dance nested modules in the Kid class. Using the keyword 
#"include" allows us to share the modules methods as "instance" methods.
#We use the keyword "extend" to share a modules methods as "class" methods
#We use the nested modules by refering to them with the :: notation, which indicates the 
#Parent::Child relationship of the nested modules 
  extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods


  attr_accessor :name

  def initialize(name)
    @name = name
  end
end 