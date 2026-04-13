cask "s3v" do
  version "0.4.5"
  sha256 "3f91b0df99c7bb6b79c3dd92f1b16c0ed5da5756c555c95c30cd00a0287c2631"

  url "https://github.com/aciddust/s3v/releases/download/v#{version}/s3v_#{version}_universal.dmg"
  name "S3V"
  desc "S3-compatible object storage viewer"
  homepage "https://github.com/aciddust/s3v"

  depends_on macos: ">= :ventura"

  app "s3v.app"

  zap trash: [
    "~/Library/Application Support/com.acid.s3v",
    "~/Library/Caches/com.acid.s3v",
    "~/Library/Preferences/com.acid.s3v.plist",
  ]
end
