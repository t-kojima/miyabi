require "spec_helper"

RSpec.describe Miyabi do

  it "漢字 -> ひらがな に変換されること" do
    expect("漢字".to_kanhira).to eq "かんじ"
  end

  it "漢字混在 -> ひらがな に変換されること" do
    expect("コレハ漢字です".to_hira).to eq "これはかんじです"
  end

  it "漢字混在 -> カナ に変換されること" do
    expect("コレハ漢字です".to_kana).to eq "コレハカンジデス"
  end

  it "漢字混在 -> ローマ字 に変換されること" do
    expect("コレハ漢字です".to_roman).to eq "korehakanjidesu"
  end

  it "ひらがな -> ひらがな に変換されること" do
    expect("ひらがな".to_hira).to eq "ひらがな"
  end

  it "ひらがな -> カナ に変換されること" do
    expect("ひらがな".to_kana).to eq "ヒラガナ"
  end

  it "ひらがな -> ローマ字 に変換されること" do
    expect("ひらがな".to_roman).to eq "hiragana"
  end

  it "カナ -> ひらがな に変換されること" do
    expect("ヒラガナ".to_hira).to eq "ひらがな"
  end

  it "カナ -> カナ に変換されること" do
    expect("ヒラガナ".to_kana).to eq "ヒラガナ"
  end

  it "カナ -> ローマ字 に変換されること" do
    expect("ヒラガナ".to_roman).to eq "hiragana"
  end

end
