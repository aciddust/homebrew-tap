cask "s3v" do
  version "0.4.0"
  sha256 "c94380d466b21b3721e16354a7280234177f48cfd952b3ae926c498ff2176103"

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
