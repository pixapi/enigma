
require './lib/encryptor.rb'
class FileInputOutput

    def read_file
        handle = File.open(ARGV[0], "r")
        incoming_text = handle.read
        handle.close
        puts incoming_text
    end 

    def write_file
        writer = File.open(ARGV[1], "w")
        writer.write(output_text)
        writer.close
    end
   
end

f = FileInputOutput.new
f.read_file
f.write_file