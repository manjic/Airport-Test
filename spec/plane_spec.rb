require_relative "../lib/plane"

describe Plane  do
    
    let (:plane) {Plane.new}

   it "should have a flying status when created" do
    expect(plane).to be_flying
  end

  it 'have a flying status when in the air' do
    expect(plane.flying?).to be_true
  end
  
  it 'can take off' do
    expect(plane.take_off).to be_true
  end

  it "can be landed" do
    expect(plane.landed).to eq(false)
  end
  
  it 'changes its status to flying after taking off' do 
    plane.take_off
    expect(plane).to have_flying_status
  end

  it "changes its status to landed after landing" do
    plane.landed
    expect(plane).not_to have_flying_status
  end

end