# About

This repository contains automated tests using **Karate Test Automation**: [Karate GitHub](https://github.com/karatelabs/karate).

The tests include scenarios for validating different pages and actions on the **NASA Hubble Mission** website and image download functionality.

## Features

### 1. **Validate Hubble Mission Page**
This test validates the **Hubble Mission Page** by checking that the text "Overview" exists in the second navigation item of the page.

**Scenario:**
- Opens the **Hubble Mission Page**.
- Waits for the second item in the navigation menu.
- Verifies that the text **"Overview"** is present.

### 2. **Open and Validate Image Download**
This test simulates the user opening the **NASA Hubble gallery**, clicking on the first image, and validating that the image can be downloaded.

**Scenario:**
- Opens the **Hubble Space Shuttle Missions Gallery**.
- Clicks on the first image in the gallery.
- Verifies that the new page's URL contains `https://science.nasa.gov/image-detail/`.
- Clicks the download button and validates that the image is successfully downloaded.

### 3. **Download Image**
This feature simulates downloading an image from the gallery.

**Scenario:**
- Opens the **Hubble Space Shuttle Missions Gallery**.
- Clicks on the first image to open the detailed view.
- Verifies the URL for image details.

## Running UI Tests

To run the tests, execute the following command:

```bash
mvnw clean test -Dtest=UiTestRunner
```

This will trigger the Karate tests for UI interactions and file download validation.

## Reports

After running the tests, you can view the reports at:

```bash
file:///D:/apps/tests/karate-frontend-tests/target/karate-reports/karate-summary.html
```

The reports provide detailed information about each test execution, including status, screenshots (if enabled), and more.

---

## **Test Configuration and Setup**

### **Headless Browser Mode:**
By default, the tests run in **headless** mode, which means no browser window will appear during the tests. This is configured in the `karate-config.js` file, where you can customize the WebDriver preferences.

### **File Download Validation:**
To check if a file was downloaded correctly, the tests are configured to monitor the download directory. The download process is verified based on the downloaded file’s URL and content type.

If you encounter any issues or need further assistance, feel free to reach out!

