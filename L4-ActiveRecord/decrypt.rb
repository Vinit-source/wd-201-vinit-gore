require "aes"

source_file = ARGV[0]
password = ARGV[1]
decrypted = AES.decrypt(File.read(source_file), password)

splitted_filename = source_file.split(".")
if splitted_filename[1] == "enc"
  target_file = "#{splitted_filename[0]}"
else
  target_file = "#{source_file}.dec"
end
File.open(target_file, "wb") { |f| f.write(decrypted) }
puts "File decrypted to \"#{target_file}\" with password #{password}"
