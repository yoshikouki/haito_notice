require 'rails_helper'

RSpec.describe Tdi, type: :model do
  before do
    create_webmock("recent.xml?limit=30", "recent_tdis.xml")
    create_webmock("recent.xml?limit=1", "only_tdi.xml")
  end

  describe "WebAPI関係" do
    let(:tdis) { Tdi.new.recent(30) }
    let(:tdi) { Tdi.new.recent(1) }

    it "APIレスポンスの数は正しい" do
      expect(tdis.count).to be 30
      # 数は`/feature/recent_tdis.xml`に依存している
    end

    it "レスポンスのkeysは変換されている" do
      # convert_key = %w[pub_date local_code company_name info_title info_url market_division]
      expect(tdis[0].key?("pub_date")).to be true
      expect(tdis[0].key?("local_code")).to be true
    end

    it "APIレスポンスの文書は正しい" do
      expect(tdis[0]["info_title"]).to eq "テストタイトル1"
      expect(tdis[29]["info_title"]).to eq "テストタイトル30"
    end

    it "APIレスポンスのURLは直URLに変換されている" do
      expect(URI.parse(tdis[0]["info_url"]).host).to \
        eq "www.release.tdnet.info"
    end

    it "APIレスポンスの市場分類を変換できる" do
      expect(tdis[0]["market_division"]).to eq "東証"
      expect(tdis[1]["market_division"]).to eq "名証"
    end

    it "APIレスポンスが一つでも正常に処理している" do
      expect(tdi[0]["info_title"]).to eq "1つだけのテストタイトル"
    end

    it "企業名を変換している" do
      company = FactoryBot.create(:company)
      expect(tdi[0]["company_name"]).to eq company.company_name
      # fixturesの企業名は"1つだけのテストタイトル"
    end
  end
end
