# Python Template
[![CI](https://github.com/revanth7667/python_template/actions/workflows/cicd.yml/badge.svg)](https://github.com/revanth7667/python_template/actions/workflows/cicd.yml)

Base Template For Python Projects

Instructions:
1. Add the packages required for the project in the ``requiremnts.txt`` file
2. Add any additional packages required for CICD and GitHub actions if required in the ``requirements_actions.txt`` file
3. Github Action for Testing is commented out, enable it the [cicd.yml](.github/workflows/cicd.yml) file when required
4. Update the path for the testing and coverage report in the [Makefile](Makefile)
5. Update the Link to the Github Workflow Badge in the README
