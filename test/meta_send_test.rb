require 'rspec'
require_relative './../meta_send'

RSpec.describe MetaSend do
  name = "Arnold"

  context "#public_send" do
    it "public send method can access instance method" do
      meta = MetaSend.new
      expect(meta.public_send(:say_hey, name)).to eq("Hey #{name}")
    end

    it "public send method can't access private method" do
      meta = MetaSend.new
      expect{meta.public_send(:say_bye, name)}.to raise_error(NoMethodError)
    end
  end

  context "#send" do
    it "send method can access instance method" do
      meta = MetaSend.new
      expect(meta.send(:say_hey, name)).to eq("Hey #{name}")
    end

    it "send method can access private method too" do
      meta = MetaSend.new
      expect(meta.send(:say_bye, name)).to eq("Bye bye #{name}")
    end
  end

end