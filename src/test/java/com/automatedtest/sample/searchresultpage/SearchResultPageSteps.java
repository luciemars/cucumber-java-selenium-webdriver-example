package com.automatedtest.sample.searchresultpage;

import io.cucumber.java.en.Then;
import org.junit.Assert;

public class SearchResultPageSteps {

    private SearchResultPage searchResultPage;

    public SearchResultPageSteps() {
        this.searchResultPage = new SearchResultPage();
    }

    @Then("^\"([^\"]*)\" is displayed in the first \"([^\"]*)\" results$")
    public void isDisplayedInTheFirstResults(String expectedResult, int nbOfResultsToSearch) {
        Assert.assertTrue(expectedResult + " wasn't found in the first " + nbOfResultsToSearch + " results.",
                this.searchResultPage.isInResults(expectedResult, nbOfResultsToSearch));
    }
}
