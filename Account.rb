class AccountName
	def initialize
		@Balance=1000 
 	end
 	def withdraw_money(amount=0)
 		if amount <= 0
			puts "withdraw amount should be greater than 0"
		elsif @Balance-amount <0
			puts "you dont have sufficient funds to withdraw"
		else
			@Balance-=amount
			puts "You have successfully withdrawn Rs. #{@amount}"
			puts "your current balance is Rs.#{@Balance}"
		end

	end
 	def deposit_money(amount=0)
		if amount<=0
			puts "Deposit amount should be greater than 0"
		else
			@Balance+=amount
			puts "You have successfully Deposited Rs.#{amount}"
			puts "your current balance is Rs.#{@Balance}"
		end
 	end
	def enquire_balance()
		puts "your current balance is Rs.#{@Balance}"	
	end

end


Myaccount= AccountName.new
option='y'
until option=='n' do
	puts "select your option"
	puts "1--> Withdraw"
	puts "2-->Deposit"
	puts "3-->Balance Enquiry"
	choice=gets.chomp.to_i
	case choice
		when 1
			puts "enter amount to withdraw"
			amount=gets.chomp.to_i
			Myaccount.withdraw_money(amount)

		when 2
			puts "enter amount to deposit"
			amount=gets.chomp.to_i
			Myaccount.deposit_money(amount)
		when 3
			Myaccount.enquire_balance()
		else	
			puts "invalid choice"
	end
	puts"do you want to continues?(y/n)"
	option=gets.chomp
end
 
