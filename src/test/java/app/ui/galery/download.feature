Feature: Validate Image Download from Hubble Gallery

Background:
  * url 'https://science.nasa.gov/mission/hubble'

Scenario: Open first image
  Given driver 'https://science.nasa.gov/gallery/space-shuttle-missions-for-hubble/'
  And waitFor(".hds-gallery-item-single.hds-gallery-image:nth-child(1)")
  When click(".hds-gallery-item-single.hds-gallery-image:nth-child(1) .hds-gallery-item-link.hds-gallery-image-link")
  And waitForUrl("https://science.nasa.gov/image-detail/")

Scenario: Verify download URL for image
    Given driver 'https://science.nasa.gov/gallery/space-shuttle-missions-for-hubble/'
    And waitFor(".hds-gallery-item-single.hds-gallery-image:nth-child(1)")
    When click(".hds-gallery-item-single.hds-gallery-image:nth-child(1) .hds-gallery-item-link.hds-gallery-image-link")
    And waitForUrl("https://science.nasa.gov/image-detail/")
    And waitFor(".usa-button.hds-button.hds-button-download.margin-right-2")

