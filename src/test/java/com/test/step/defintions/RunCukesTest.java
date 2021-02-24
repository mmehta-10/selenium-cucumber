package com.test.step.defintions;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(
		plugin = {"pretty","html:target/cucumberHtmlReport", "json:target/cucumber.json"},
		features = "classpath:features"
)

public class RunCukesTest{
}
