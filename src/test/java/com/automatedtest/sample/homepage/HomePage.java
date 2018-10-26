package com.automatedtest.sample.homepage;

import com.automatedtest.sample.basepage.BasePage;
import org.junit.Assert;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;


public class HomePage extends BasePage{

    private static final String HOME_PAGE_URL = "https://www.google.";

    @FindBy(css = "#hplogo")
    private WebElement logo;

    @FindBy(css = "#lst-ib")
    private WebElement searchBar;


    HomePage() {
        PageFactory.initElements(driver, this);
    }

    void goToHomePage(String country){
        driver.get(HOME_PAGE_URL + country);
        wait.forLoading(5);
    }

    void checkLogoDisplay() {
        wait.forElementToBeDisplayed(5, this.logo, "Logo");
    }

    void checkTitle(String title) {
        String displayedTitle = driver.getTitle();
        Assert.assertTrue("Displayed title is " + displayedTitle + " instead of " + title,
                title.equals(displayedTitle));
    }

    void checkSearchBarDisplay() {
        wait.forElementToBeDisplayed(10, this.searchBar, "Search Bar");
    }

    void searchFor(String searchValue) {
        this.searchBar.sendKeys(searchValue);
        this.searchBar.sendKeys(Keys.ENTER);
    }
}
