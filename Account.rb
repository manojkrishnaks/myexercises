Class AccountName
	def initialize
		@Balance=1000 
 	end
 	def withdraw_money(amount=0)
 		if amount<=0
			puts "withdraw amount should be greater than 0"
		elsif @Balance-amount <0
			puts "you dont have sufficient funds to withdraw"
		else
			@Balance-=amount
			puts "You have successfully withdrawn Rs."#{amount}
			puts "your new current balance is Rs."#{@Balance}
		end

	end
 	def deposit_money(amount=0)
 	end
	def enquire_balance()
	end

end

Myaccount= AccountName.new
