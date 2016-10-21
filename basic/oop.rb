$global_variable=10
class Customer
	@@no_of_customer=0
	def initialize(id,nama,addr)
	  @cust_id,@cust_nama,@cust_addr = id,nama,addr
	end

	def display_details
		puts "-----------------------------"
		puts "Customer id: #{@cust_id}"
		puts "Customer Name: #{@cust_nama}"
		puts "Customer Address: #{@cust_addr}"
	end

	def total_no_of_customer
		puts "Total Number of Customer: #{@@no_of_customer}"
		puts "Value of Global Variable: #{$global_variable}"
	end
end

bayu=Customer.new("1","Bayu Apri","Ngawi")
budi=Customer.new("2","Budi Utomo","Pati")

bayu.display_details
bayu.total_no_of_customer

budi.display_details
budi.total_no_of_customer

