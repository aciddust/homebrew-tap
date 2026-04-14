cask "s3v" do
  version "0.5.0"
  sha256 "d94489c9af38280987684a367e1efdb177dff1804b81265662deae3ec739c25a"

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
