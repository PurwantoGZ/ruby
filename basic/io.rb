#!/usr/bin/ruby

def baca_file
	aFile=File.new("input.txt","r")
	if aFile
		content=aFile.sysread(40)
		puts content
	else
		puts "unable to open file"
	end
end

def tulis_file
	aFile=File.new("input.txt","r+")
	if aFile
		3.times do
			content=aFile.syswrite("vinna")
			/puts content/
		end
	else
		puts "unable to open file"
	end
end

/baca_file/
/tulis_file/

def baca
	aFile=File.new("input.txt","r+")
	if aFile
		aFile.syswrite("ABCDE")
		aFile.each_byte {|ch| putc ch; putc ?. }
	else
		puts "Unable"
	end
end

def baca_io
	arr=IO.readlines("input.txt")
	puts arr[0]
	puts arr[1]
end

def foreach_io
	IO.foreach("input.txt"){|i|puts i}
end

def rename_io
	File.rename("input.txt","input_rename.txt")
end

def delete_io
	File.delete("input_rename.txt")
end

/rename_io/
/delete_io/
def chmod_access
	file=File.new("test.txt","w")
	file.chmod(0755)
end
#chmod_access
def open_io
	File.open("test.txt")if File::exist?("test.txt")
end

def found_file?
    return	File.file?("test.txt")
end

#puts found_file?

def directory_folder?
	return File::directory?("/usr/local/bin")
end

def directory_file?
	return File::directory?("test.txt")
end

#puts directory_folder?
#puts directory_file?

def readable_file
	puts File.readable?("test.txt")
	puts File.writable?("test.txt")
	puts File.executable?("test.txt")
end
#readable_file

def file_zero
	puts File.zero?("test.txt")
end

def file_size
	puts File.size?("test.txt")
end

def file_type
	puts File::ftype("test.txt")
end

#file_zero
#file_size
#file_type

def create_folder
	Dir.mkdir("folder_baru",775)
end

#create_folder

def del_folder
	Dir.delete("folder_baru")
end

#del_folder