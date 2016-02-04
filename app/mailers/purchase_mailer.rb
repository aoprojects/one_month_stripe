class PurchaseMailer < ActionMailer::Base
	layout 'purchase_mailer'
	default from: "One Month Stripe Payments <aostendorf@gmail.com>"

	def purchase_receipt purchase
		@purchase = purchase 
		mail to: purchase.email, subject: "Thanks for your purchase!"
		# this variable will be available in the template
	end

end
