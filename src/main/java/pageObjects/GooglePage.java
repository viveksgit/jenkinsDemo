package pageObjects;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.PageFactory;

public class GooglePage {
	WebDriver driver;
	
	public GooglePage(WebDriver driver) {
		this.driver = driver;
		PageFactory.initElements(driver, this);
	}

	 @FindBy(how = How.CSS, using = "input[title='Search']") 
	 private WebElement searchBox;
	 
	 @FindBy(how = How.CSS, using = "input[value='Google Search']") 
	 private WebElement searchButton;
	 
	 @FindBy(how = How.CSS, using = "input[value='I\'m Feeling Lucky']") 
	 private WebElement imLuckyButton;
	 
	 
	 public void launchGooglePage() {
		 driver.get("https://www.google.com/");
		 }
	 
	 public void enterSearchText(String email) {
		 searchBox.sendKeys(email);
		 }
	 
	 public void clearSearchText(String email) {
		 searchBox.clear();
		 }
	 
	 public void clickSearch() {
		 searchButton.click();
		 }
	 
	 public void clickImLucky() {
		 imLuckyButton.click();
		 }
	 
}