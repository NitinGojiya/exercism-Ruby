class LocomotiveEngineer
  def self.generate_list_of_wagons(*list)
    list
  end
  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    first, second, locomotive, *rest = each_wagons_id
    [locomotive, *missing_wagons, *rest, first, second]
  end


  def self.add_missing_stops(route, **stops)
    { **route, stops: stops.values }
  end

  def self.extend_route_information(route, more_route_information)
    {**route, **more_route_information}
  end
end
