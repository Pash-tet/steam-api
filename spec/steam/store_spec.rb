# frozen_string_literal: true

describe Steam::Store do
  let(:appid) { "976730" }

  describe ".app_details" do
    let(:result) { described_class.app_details(appid) }

    it "returns the details of an application" do
      expect(result).not_to be_nil
    end

    it "returns a JSON structure containing details of the returned app" do
      expect(result).to include("976730")
    end
  end
end
