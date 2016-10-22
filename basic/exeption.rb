#!/usr/bin/ruby
def exeption_one
	begin
		file=open("text.txt")
		if
			puts "File opened successfully"
		end
	rescue Exception => e 
		file=STDIN
	end
	print file, "==",STDIN,"\n"
end

#exeption_one

def rescued_one
	begin
		puts "before raise"
		raise "An Error has accured"
		puts "after raise"
	rescue Exception => e
		puts "I`m Rescued"
	end
	puts "after the begin block"
end

#rescued_one

def backtrace_example
	begin
        raise 'A test exception'
    rescue Exception => e
        puts e.message
        puts e.backtrace.inspect
    end
end

#backtrace_example

def ensure_example
    begin
        puts "Hello, Purwanto"
        raise
    rescue Exception => e
        puts "Raise view"
    ensure
        puts 'Finally'
    end
end

#ensure_example

def catch_throw
    def prompt_and_get(prompt)
        print prompt
        res=readline.chomp
        throw:quit_request if res=="!"
        return res
    end
    catch:quit_request do
        name=prompt_and_get("Name: ")
        age=prompt_and_get("Age: ")
        sex=prompt_and_get("Sex: ")
    end
    prompt_and_get("Name: ")  
end

#catch_throw
class FileSaveError < StandardError
    attr_reader :reason
    def initialize(reason)
        @reason=reason
    end
end

def class_exeption
    File.open("test.txt","w") do|file|
        begin
            puts file
        rescue Exception => e
            puts "Error!"
        raise FileSaveError.new($!)

        end
end

class_exeption


