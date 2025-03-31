Feature: Navigate to About Hubble page

Background:
  * url 'https://science.nasa.gov/mission/hubble'

Scenario: Navigate to About Hubble page
  Given driver 'https://science.nasa.gov/mission/hubble'
  And waitFor(".hds-secondary-navigation-menu-items li:nth-child(2)")
  When click(".hds-secondary-navigation-menu-items li:nth-child(2)")
  And waitFor(".hds-secondary-navigation-menu-items li:nth-child(2) ul li a")
  When click(".hds-secondary-navigation-menu-items li:nth-child(2) ul li a:first-child")
  And waitForUrl("https://science.nasa.gov/mission/hubble/overview/about-hubble/")
  And waitFor("h1")  
  Then match text("h1") contains 'About Hubble'