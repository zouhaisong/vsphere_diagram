RSpec.describe Cli, "#hello" do
  context "the demo context" do
    it "hello should echo the name" do
      cli = Cli.new
      expect("jack").to eq cli.hello("jack")
    end
  end
end
