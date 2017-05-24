require "./spec_helper"

describe KemalPlayground do

  it "renders /" do
    get "/"
    response.body.should contain("Preview")
  end
end
