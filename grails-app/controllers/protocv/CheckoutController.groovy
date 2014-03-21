package protocv

import com.stripe.model.Charge 
import com.stripe.exception.CardException;

class CheckoutController {
    
    def index() {}
    
    def charge(String stripeToken, Double amount) { 
        println "in charge"
        def amountInCents = (amount * 100) as Integer
        
        def chargeParams = [ 'amount': amountInCents, 'currency': 'usd', 'card': stripeToken, 'description': 'customer@sample.org' ]
        
        def status 
        
        try {   Charge.create(chargeParams) 
                status = 'Your purchase was successful.' } 
        catch(CardException e) 
             {   // Since it's a decline, CardException will be caught 
                 System.out.println("Status is: " + e.getCode()); 
                 System.out.println("Message is: " + e.getParam());
                 status = 'There was an error processing your credit card.' }
        
        redirect(action: "confirmation", params: [msg: status]) 
        return 
    }
    
    def confirmation(String msg) { [msg: msg] } }