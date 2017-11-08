Feature: I am able to login to the social media site and submit a picture to the site

	Scenario: I can fill in all the login form with the username 
		Given i can access login form
		When i fill in the fields in the form with expected types of data 
		And i click on the upload a picture button i can then upload a picture
		Then the picture is uploaded to the site and i can view it. 
