class Bike

  attr_writer :broken

  def initialize(broken = false)
      @broken = broken
  end

  def working?
    @broken == true ? false : true
  end

  def report_broken
    @broken = true
  end

  def broken?
    @broken
  end  
end
