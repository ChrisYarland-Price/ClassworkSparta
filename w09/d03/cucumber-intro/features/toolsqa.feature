Feature: I am able to fill in all form fields in the practice automation form correctly and the form behaves appropriately when submitted 

	Scenario: I can fill in all form fields with expected data types
		Given i can access the toolsqa practice automation form
		When i fill in the fields in the form with expected types of data 
		Then they appear on the page correctly 