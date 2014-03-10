require_relative "../lib/airport"
require_relative "../lib/plane"
require_relative "../lib/weather"

describe Airport do

  let (:plane ) {Plane.new}
  let (:airport) { Airport.new(:capacity => 6) } 


  it "should land a plane" do
    expect(airport.plane_count).to eq(0)
    airport.land(plane)
    expect(airport.plane_count).to eq(1)
  end

  it "should allow planes to takeoff" do
    airport.land(plane)
    airport.take_off(plane)
    expect(airport.plane_count).to eq(0)
  end

  it "should know when its full" do
    expect(airport).not_to be_full
    6.times{airport.land(Plane.new)}
    expect(airport).to be_full
  end

  it "should not land a plane when its full" do
  6.times { airport.land(Plane.new)}
  expect(lambda { airport.land(plane) }).to raise_error(RuntimeError)
  end

  it "should allow a plane to land if sunny" do
    weather = double('weather')
    weather == "sunny"
    expect(airport).not_to be_full
    airport.land(plane)
  end

  it "should allow a plane to takeoff if sunny" do
    weather = double('weather')
    weather == "sunny"
    airport.take_off(plane)
  end

  it "should not allow a plane to takeoff if stormy" do
  weather = double('weather')
  weather == "stormy"
  expect(lambda { airport.take_off(plane) }).to raise_error(RuntimeError)
  end 

  it "should not allow a plane to land if stormy" #do
  # weather = double('weather')
  # weather == "stormy"
  # expect(lambda{ airport.land(plane) }).to raise_error(RuntimeError)
  # end
end

	
  
