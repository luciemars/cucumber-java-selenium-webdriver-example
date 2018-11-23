# Automated test example in Java with Cucumber and Selenium WebDriver #

This project is an example of UI automated functional test for Google home page and search using Selenium and Cucumber.

Test scenarios are described in the feature files located here ./src/test/resources/com/automatedtest/sample.

## Installation ##

You need to have [Java 8 JDK](https://docs.oracle.com/javase/8/docs/technotes/guides/install/install_overview.html) installed along with [maven](https://maven.apache.org/).

To run the tests locally with Chrome, install ChromeDriver from [here](http://chromedriver.chromium.org) and add its location to your system PATH.

To run the tests locally with Firefox, install GeckoDriver from [here](https://github.com/mozilla/geckodriver/releases) and add its location to your system PATH.

To install all dependencies, run 

```console
$ mvn clean install
```

## Running tests ##

```console
$ mvn test
```

By default tests will run on Chrome, to change that specify `-Dbrowser={browser}` where `{browser}` is either `chrome` or `firefox`

You can also select specific scenarios to execute using `-Dcucumber.options="--tags @your_tag"`. More info about tags and how to combine them [here](https://github.com/cucumber/cucumber/tree/master/tag-expressions).

## Hiptest ##

Feature files can be handled with Hiptest, a test management platform. To get started with Hiptest, 
go [here](https://hiptest.com/start/tutorials/getting-started-with-behavior-driven-development/). Features files in 
this project were exported directly from an [Hiptest project](https://app.hiptest.com/projects/102008) using 
[Hiptest publisher](https://github.com/hiptest/hiptest-publisher). Credentials to access the project are the following.

- _login:_ automated-tests@lumiererouge.net
- _password:_ Eth7S9#
