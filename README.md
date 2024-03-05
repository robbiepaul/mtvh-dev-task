# MTVH Ruby developer task

## Overview

The task is to implement a simple webhook endpoint that will receive a JSON
payload at an indeterminate interval. The payload will contain a `url` of a CSV
file containing a list of applicants for housing. These applicants need to be
imported into the database.

You will have an hour to work through the task, feel free to ask any questions.
If you don't finish, that's okay, we're more interested in your approach and how
you think through the problem.

Keep in mind that we are looking for a solution that is simple, maintainable
and secure. We are not looking for a solution that is over-engineered or
overly complex.

## User stories

As a **product owner**
I want to **be able to import a list of applicants from a third-party service**
So that **I can manage the applicants in my application**

As a **product owner**
I want to **be notified when an applicant fails to be imported**
So that **I can take action**

## Acceptance criteria

- Given a valid JSON payload with a `url` key
  When the endpoint receives the payload
  Then the applicants from the CSV file should be imported into the database

- When an applicant fails to be imported
  Then the the product owner should be notified

- When the endpoint receives an invalid JSON payload
  Then it should return an appropriate error response

## Technical notes

- A valid payload will look like this:
  ```json
  {
    "url": "http://en.third-party-forms.com/mtvh/2024/03/04/applicants.csv",
    "batch_id": "6134-5678-9101",
    "timestamp": "2024-03-04T12:00:00Z"
  }
  ```
- The CSV will have the following columns:
  - SUBMITTED_TIME
  - PROPERTY_REFERENCE
  - FULL_NAME
  - CURRENT_ADDRESS
  - PHONE_NUMBER
  - EMAIL_ADDRESS
  - RESPONSIBLE_PERSON
  - DATE_OF_BIRTH
- There is an example CSV file in the `spec/fixtures` directory
- The CSV file could have a large number of rows
- There is a list of valid properties in the `spec/fixtures`
- If you want to call the endpoint add the CodeSandbox host to the allowed
  hosts in `config/environments/development.rb`
