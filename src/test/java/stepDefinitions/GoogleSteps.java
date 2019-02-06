package stepDefinitions;

import cucumber.TestContext;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;
import pageObjects.GooglePage;

public class GoogleSteps {
	
	TestContext testContext;
	GooglePage googlePage;
	
	public GoogleSteps(TestContext context) {
		testContext = context;
		googlePage = testContext.getPageObjectManager().getGooglePage();
	}
	
	@Given("^I launch google page$")
	 public void googlePage(){
		googlePage.launchGooglePage(); 
	 }
	 
	 @When("^I search for \"([^\"]*)\"$")
	 public void searchText(String text)  {
		 googlePage.enterSearchText(text); 
	 }
	
	 @When("^I click search button$")
	 public void clickSearch()  {
		 googlePage.clickSearch(); 
	 }
	 
	 @When("^I click im lucky button$")
	 public void ClickImLucky()  {
		 googlePage.clickImLucky(); 
	 }
	 
}