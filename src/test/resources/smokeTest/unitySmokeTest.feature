Feature: Unity smoke test suite

Scenario: Submitting a quote/proposal with 'alternative billing system' flag ticked
Given login as Sales user
When open an existing account
Then unverify account
When tick 'Alternative Billing System'
And select reason
Then verify account
When create a new opportunity
And create a proposal
And edit the proposal
And populate mandatory fields on proposal and select Save
Then configure products
And add products and go to Pricing
And select Reprice
And select Finalize
Then generate order form
And present the proposal
When login as Billing user
And set the opportunity to closed won
Then accept the quote proposal
And approve tech and Billing fulfilments
Then create an invoice run

Scenario: Submitting a quote/proposal on and account in South Africa - AA
Given login as Sales user
When open an existing account
And create a new opportunity
And create a proposal
And edit the proposal
And populate mandatory fields on proposal and select Save
Then configure products
And add products and go to Pricing
Then select Reprice
When select Select Submit for Approval
Then approve the proposal
And generate order form
And present the proposal
When login as Billing user
And set the opportuntity to closed won
Then accept the quote proposal
And Approve Tech and Billing fulfilments
Then Create an invoice run

Scenario: Create a proforma invoice
Given login as Sales user
When open an existing account
And create a new opportunity
And create a proposal
And Save
And click down arrow next to 'approvals'
Then select request proforma invoice
And click Save
When log in as a billing user
Then go to billing and fulfilment queues
And click arrow next to recently viewed and select proforma invoice requests pending
Then select the proforma request for customer, click on the N- number
And open the quote in new tab
When click generate proforma
Then select option PDF
And select template - Proforma Invoice
Then click to view the file
And close the PDF
And go back to the N number and change the status to generated


Scenario: Submitting a quote/proposal with % discoount and a final discount value greater than $
Given login as Sales user
When open an existing account
And create a new opportunity
And create a proposal
And edit the proposal
Then populate mandatory fields on proposal and select Save
When configure products
And add products and go to Pricing
Then under Adjustment Type column, add a % discount and the total discounted amount should be more than $
Then select Reprice
And select Select Submit for Approval (Finalize should be disabled)
When approve the proposal
And generate order form
Then present the proposal
When login as Billing user
And set the opportuntiy to closed won
Then accept the quote proposal
And approve Tech and Billing fulfilments
And create an invoice run

Scenario: Generate Invoice for Out of Scope Usage
Given login as Sales user
When open an existing account with GBP currency
And create a new opportunity 
And create a proposal - period should be for  month only
And edit the proposal
And populate mandatory fields on proposal and select Save
Then configure products
And add products that has out of scope usage
Then generate order form
And present the proposal
When login as Billing user
And set the opportunity to closed won
Then accept the quote proposal
And approve Tech and Billing fulfilments
And create an invoice run

Scenario: Generate Invoice for Flat Fixed Price USD
Given login as Sales user
When open an existing account with USD currency
And create a new opportunity 
And create a proposal - period should be for  month only
And edit the proposal
And populate mandatory fields on proposal and select Save
Then configure products
And add products that has fixed price set (iesales book)
Then generate order form
And present the proposal
When login as Billing user
And set the opportunity to closed won
Then accept the quote proposal
And approve Tech and Billing fulfilments
And create an invoice run

Scenario: Generate invoice for scope change -  additional user
Given login as Sales user
When open an existing account with GBP currency
And create a new opportunity 
And create a proposal - using sorting codes - PBA
And populate mandatory fields on proposal and select Save
Then configure products
Then generate order form
And present the proposal
When login as Billing user
And set the opportunity to closed won
Then accept the quote proposal
And approve Tech and Billing fulfilments
And create an invoice run

Scenario: Customer Amendment - Add a VAT number
Given login as Billing user
When open an account that is in GBP currency
And unverify the account
And add the VAT number to the VAT number field
Then verify the account

Scenario: Generate Invoice using a new bill-to contact
Given login as Sales user
When open an existing account
And create a new opportunity
And create a proposal
And edit the proposal
Then select the Bill to Contact field and select New Contact
And populate mandatory fields and select Save
And populate mandatory fields on proposal and select Save
And configure products and Finalize
Then generate order form
And present the proposal
When login as Billing user
And set the opportunity to closed won
Then accept the quote proposal
And approve Tech and Billing fulfilments
And create an invoice run

Scenario: Generate Invoice using an existing bill-to contact
Given login as Sales user
When open an existing account
And create a new opportunity
And create a proposal
And edit the proposal
Then select the Bill to Contact field
And enter a search string of an existing contact and select the searched contact
And populate mandatory fields on proposal and select Save
And configure products and Finalize
Then generate order form
And present the proposal
When login as Billing user
And set the opportunity to closed won
Then accept the quote proposal
And approve Tech and Billing fulfilments
And create an invoice run

Scenario: Generate Invoice that has the same bill-to and ship-to locations
Given login as Sales user
When open an existing account
And create a new opportunity
And create a proposal - use GWL as the product
And edit the proposal
And populate mandatory fields on proposal and select Save
And configure products
And on the the cart page, make sure that the location on the Ship to Location field is the same as the Bill to Location of the proposal, and Finalize
Then generate order form
And present the proposal
When login as Billing user
And set the opportunity to closed won
Then accept the quote proposal
And approve Tech and Billing fulfilments
And create an invoice run

Scenario: Generate Invoice that has a different bill-to and ship-to locations
Given login as Sales user
When open an existing account
And create a new opportunity
And create a proposal
And edit the proposal
And populate mandatory fields on proposal and select Save
And configure products
And on the the cart page, select a different location on Ship to Location field, and Finalize
Then generate order form
And present the proposal
When login as Billing user
And set the opportunity to closed won
Then accept the quote proposal
And approve Tech and Billing fulfilments
And create an invoice run

Scenario: Generate Invoice for full credit
Given login as Billing user
When open an existing account where the cancellation will be created
And create a cancellation opportunity
And create a proposal
And configure a product to terminate (installed products)
Then using the current date, select calculate
And select Confirm
And go to Pricing and Finalize
And set the opportunity to Closed Won
And accept the proposal
And approve Tech and Billing fulfilment
And create an invoice run

Scenario: Generate Invoice for partial credit
Given login as Billing user
When open an existing account where the cancellation will be created
And create a cancellation opportunity
And create a proposal
And configure a product to terminate (installed products)
Then add a date that is estimated half from the current date until the end date of the contract and select calculate
And select Confirm
And go to Pricing and Finalize
And set the opportunity to Closed Won
And accept the proposal
And approve Tech and Billing fulfilment
And create an invoice run

Scenario: Generate Invoice using a new bill-to contact
Given login as Sales user
When open an existing account
And create a new opportunity
And create a proposal
And edit the proposal
And select the Bill to Contact field and select New Contact
And populate mandatory fields and select Save
And populate mandatory fields on proposal and select Save
And configure products and Finalize
Then generate order form
And present the proposal
When login as Billing user
And set the opportunity to closed won
Then accept the quote proposal
And approve Tech and Billing fulfilments
And create an invoice run

Scenario: Generate single line invoice
Given login as Sales user
When open an existing account
And create a new opportunity
And create a proposal
And edit the proposal
And populate mandatory fields on proposal and select Save
And configure products
And add a single standalone product
And finalize cart
Then generate order form
And present the proposal
When login as Billing user
And set the opportunity to closed won
Then accept the quote proposal
And approve Tech and Billing fulfilments
And create an invoice run

Scenario: Generate multi line invoice
Given login as Sales user
When open an existing account
And create a new opportunity
And create a proposal
And edit the proposal
And populate mandatory fields on proposal and select Save
And configure products
And add multiple standalone or bundled products
And finalize cart
Then generate order form
And present the proposal
When login as Billing user
And set the opportunity to closed won
Then accept the quote proposal
And approve Tech and Billing fulfilments
And create an invoice run

Scenario: Generate Invoice using Net  payment term
Given login as Sales user
When open an existing account with Net  as payment term
And create a new opportunity
And create a proposal
And edit the proposal
And Populate mandatory fields on proposal and select Save
And configure products and Finalize
Then generate order form
And present the proposal
When login as Billing user
And set the opportunity to closed won
Then accept the quote proposal
And approve Tech and Billing fulfilments
And create an invoice run

Scenario: Generate Invoice using Net  payment term
Given login as Sales user
When open an existing account with Net  as payment term on the France org
And create a new opportunity
And create a proposal - using Firco Continuity
And edit the proposal
And populate mandatory fields on proposal and select Save
And configure products and Finalize
Then generate order form
And present the proposal
When login as Billing user
And set the opportunity to closed won
Then accept the quote proposal
And approve Tech and Billing fulfilments
And create an invoice run

Scenario: Billing plans
Given login as Sales user
When open an existing account
And create a new opportunity
And create a proposal
Then finalize quote
And click on billing plans
And click on New
And tick the products that will be billed in stages
And click Next
When enter a billing plan name
And in billing method select percentage
And in number of installments enter 
And enter the billing start and end date (this should match the subsctiiption start and end date)
And click next
And in plan Item Name - enter signature, Percentage , period start date //, period end date //, ready for invoice date //
And in plan item name  - enter installation, Percentage , period start date // period end date //, ready for invoice date //
And in plan item name - enter UAT, percentage , period start date //, period end date //, ready for invoice date //
And click save
Then generate order form
And present the proposal
When login as Billing user
And set the opportunity to closed won
Then accept the quote proposal
And approve Tech and Billing fulfilments
And create an invoice run

Scenario: Book
Given login as Sales user
When open an existing account
And create a new opportunity
And create a proposal
And edit the proposal
Then populate mandatory fields on proposal and select Save
And configure products
And add products that has fixed price set (iesales book)
And make sure the Fulfillment Type and Billing Frequency are correct for directory shipments 
Then confirm directory pricing in the cart from current pricing sheet
And generate order form
And present the proposal
When login as Billing user
And set the opportunity to closed won
Then accept the quote proposal
And approve Tech and Billing fulfilments
And create an invoice run

Scenario: Book (major & daily shipping file)
When approve the B&F QC Check
Then go to Reports (Book Reports-Shipping File)
And check filter on the left to check default;• Equals technical fulfillment
And status Tech Ready
And product Name contains Directory
And billing and Fulfillment Queue created date range has a start date after the date of the major shipping file
Then check fulfillment start date; ensure it is not for a previous edition (st half of a set) to determine what data you need to include on the list
And run Report
And export Report- select details only
And compare Excel file to the orders that have been QC Check within the report time frame
And update Technical Fulfillment Lines from Tech Ready to Tech Fulfilled

Scenario: Order but rejected due to price error
Given login as Sales user
When open an existing account
And create a new opportunity
And create a proposal
And edit the proposal
Then populate mandatory fields on proposal and select Save
And configure products
And add products and configure price
Then generate order form
And present the proposal
When login as Billing user
And set the opportunity to closed won
Then accept the quote proposal
And approve Tech and Billing fulfilments
And create an invoice run

Scenario: Government
Given login as Sales user
When open an existing account
And create a new opportunity
And create a proposal
And edit the proposal
Then populate mandatory fields on proposal and select Save
And configure products
And add products
When confirm pricing in the cart, Term dates should match invoice from Government Services Team (ex month, Quarterly/ months)
Then generate order form
And present the proposal
When login as Billing user
And set the opportunity to closed won
Then accept the quote proposal
And approve Tech and Billing fulfilments
And create an invoice run

Scenario: Cases
Given log in as a Sales user
When open an existing account 
And hover over cases and click new
And select support services
Then add a contact 
And select type problem
And select category client servicing
And select sub category Credit
And case origin select other
Then enter product interest
And enter Subject - test case
And enter Description - test case
And click Save
When log in as a billing user
Then go to the case created and change status to closed