package com.test.step.defintions;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
		plugin = {"pretty",
				"html:target/cucumberHtmlReport",
				"json:target/cucumber.json",
				"io.qameta.allure.cucumber5jvm.AllureCucumber5Jvm",},
		features = "classpath:features"
)

public class RunCukesTest{
}
