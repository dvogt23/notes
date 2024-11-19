# Coding projects
In general there are some basic topics, you have to check before start a bigger project/application. These decisions are fundamental for the smooth development of a application.
## Timestamp/Date persistance
How to deal with timestamps i.e. getting from user inputs? Do we wanna be timezone compatible with clients/users in different timezones? How to get timezone from user in my backend requests?
- persist timestamp and dates always in UTC in your database
- use of ISO8601 date/timestamp formats, but have to keep in mind on calculations
- most important; keep it consistant in your database
## Logging/logfile analytics
What and when you should log something to your logfiles. Make a strategy about logging in general, to get information if you need some in your debugging session for a complex problem. Another great idea is, to have an external service to aggregate your logs for each project ie. rollbar. I would prefer to have for each project a aggregation of project wide logs of your application, hosts and client errors.
## Internalisation i18n
Its always a good idea to start with an international translation files on your project. Its easy to looking for a phrase in your application and on the other hand its easy to add another language to your application, in case someone join your project with a different language. A great feature I saw on an project, to have a backend portal you get a possibility to edit you translations life for your keys.
## Licenses
If you are planning to create a business, you must verify your licenses and dependencies to ensure they comply.
## ...
[...]