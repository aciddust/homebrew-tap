cask "s3v" do
  version "0.3.0"
  sha256 "7a109054d3b52312863c7e4e04a3dbab741f072d4bb9e7631cf3b44b62192f74"

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
