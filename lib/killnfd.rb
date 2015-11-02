require "killnfd/version"

class String
  def to_nfc
    self.unicode_normalize(:nfc)
  end

  def to_nfd
    self.unicode_normalize(:nfd)
  end

  def is_nfd?
    ! self.unicode_normalized?(:nfc)
  end
end

module KillNFD
  def self.kill_nfd(dryrun: false)
    Dir.glob("**/*").each do |file|
      if file.is_nfd?
        if File.exist?(file.to_nfc)
          puts "#{file.to_nfc} (NFC) exists: skipping"
          next
        end

        FileUtils.mv(file, file.to_nfc)
        puts "mv \"#{file}\" \"#{file.to_nfc}\""
      end
    end
  end
end
