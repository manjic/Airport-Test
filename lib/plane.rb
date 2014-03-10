class Plane

  def initialize
     @flying = true
   end

  def flying?
    @flying
  end

  def take_off
    take_off = @flying
  end

  def landed
    !@flying
  end

  def has_flying_status?
    @flying
   end

  def land
    !@flying
  end

 def plane_count
  plane.count
 end
    
end
