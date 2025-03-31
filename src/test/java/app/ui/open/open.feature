Feature: Validate Hubble Mission Page

Background:
  * url 'https://science.nasa.gov/mission/hubble'

Scenario: Check if Overview text exists in the second navigation item
  Given driver 'https://science.nasa.gov/mission/hubble'
  And waitFor(".hds-secondary-navigation-menu-items li:nth-child(2)")
  Then match text(".hds-secondary-navigation-menu-items li:nth-child(2)") contains 'Overview'