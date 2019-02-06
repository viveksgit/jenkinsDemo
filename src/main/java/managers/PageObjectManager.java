package managers;



import org.openqa.selenium.WebDriver;

import pageObjects.LoginPage;
import pageObjects.GooglePage;
import pageObjects.HomePage;


public class PageObjectManager {

	private WebDriver driver;

	private LoginPage loginPage;

	private HomePage homePage;
	
	private GooglePage googlePage;
	

	public PageObjectManager(WebDriver driver) {

		this.driver = driver;

	}
	

	public HomePage getHomePage(){

		return (homePage == null) ? homePage = new HomePage(driver) : homePage;

	}


	public LoginPage getLoginPage() {

		return (loginPage == null) ? loginPage = new LoginPage(driver) : loginPage;

	}

	public GooglePage getGooglePage() {

		return (googlePage == null) ? googlePage = new GooglePage(driver) : googlePage;

	}
	
}