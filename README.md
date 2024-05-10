# robot-framework-website-tests

This repository contains automated tests for testing the https://mystore-testlab.coderslab.pl/index.php using Robot Framework. The tests are written in Robot Framework and utilize SeleniumLibrary for web automation.

Framework and Library used:
- **Framework:** Robot Framework
- **Library:** SeleniumLibrary

**How to run tests:**

To run tests locally, follow these steps:

1. Clone this repository to your local machine
2. Make sure Python is installed
3. Install Robot Framework


    pip install robotframework

4. Install SeleniumLibrary


    pip install robotframework-seleniumlibrary



5. Navigate to root directory of the repository
6. Run the tests using the following command:


    robot --outputdir results tests

The above command will run all the tests and create the directory for the outcome.

(As of the day 10.05.2024, the registration test is hard coded it is best to put new data to register new acc, otherwise the test will fail. It will soon be changed.)