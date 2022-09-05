# ![alt text](logo.png) DualSun Fullstack RoR/Angular Hiring Test

This test is part of our hiring process for Fullstack RoR/Angular developers.

Be sure to read all of the instructions carefully and follow the guidelines below. This test should take you between 3 and 5 hours depending on your experience.

## Goal

Build a RoR API and a small Angular.js app that uses this API. The application displays a unique web page acting as a form to register DualSun’s installations made by third party installers.

## Context

At DualSun, we do not install our panels ourselves. Instead we match incoming customers (leads) with installers that we have screened and trained.

To be able to track the closing of these leads, we ask the installers to fill a document called a **“procès verbal de mise en service (PVMES)”** when they’re done installing a solar system that they have sold. That way, we know what product is being sold to who and we can activate the panel’s warranty.

The PVMES is currently a sheet of paper. Your goal is to take it to the web!

## Specs

The form must contain:

- **Details of the company that has sold and installed the system** : name and SIREN
- **Customer’s details** : name, email, telephone
- **Installation’s details** : address, date of installation, number of panels, type (options: “photovoltaic” or “hybrid”) and their corresponding IDs (the IDs are displayed on the panels, for the sake of the exercise consider that they are 6 digit codes) 

The form must be branded :
- Insert the logo in the header (provided in this repository : logo.png)
- Add a footer containing the following information :
```
DualSun, +33 4 13 41 53 70, contact@dualsun.fr
```

The form will be filled on-site by the installer, who may not have access to a laptop and is, by far, not the most geeky person you can hope for.

The inputs gathered must be stored in a way that allows our support team to quickly filter and analyze the data since around 100 (and rising) of these forms are currently submitted a week.

## Tech requirements

A few technologies/libraries **must be used** to build the app:

**Frontend:**

- Language : Typescript
- Framework : Angular (>= v10)

**Backend:**

- Language: Ruby
- Framework : Rails
- Database : PostgreSQL

## Other constraints

- Your code must be covered by tests
- You must optimize the database schema as much as possible
- Inputs must be validated somehow, implementation is left at your discretion
- The api must be RESTful

## What we expect

Simply fork this repository and then build on the two directories at your disposal (client & server), they contain the basic setup for the rails & the angular applications.

## How to send your app code

When you feel you are done, send us by email a link to the forked GitHub repository with invite accesses for [@fab2605](https://github.com/fab2605) and [@cramarokoto](https://github.com/cramarokoto).

## Tips

- **Design/style of the app is not the priority, focus on database structure, code quality and test coverage.**
- Feel free to add and use any library you want
- Got questions? Contact us! (No penalties for asking questions 😉)

