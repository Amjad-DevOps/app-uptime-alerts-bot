# :rotating_light: GChat Alert : APP Uptime Bot 
 A Python-based bot integrated with GitLab CI/CD and Google Chat to monitor the uptime of applications. This repository contains scripts and configurations to send alerts to Google Chat when the application status changes or encounters issues

## Prerequisites
1. Gchat
2. Gitlab CI/CD

## Steps to follow

1. Create a group in Gchat with a proper name, for example, "Environment Status Check."
2. Create a webhook: Go to the Gchat group, navigate to "App & Integration" and select "Webhook."
3. Add the webhook in the notification.py file.
4. Add the proper development, test, or production URL in the statusCode.sh file.
5. Create a .gitlab-ci.yml file to run this with a Python image.
6. Schedule the CI/CD pipeline to run every 5 minutes.

## Conclusion

Every 5 minutes, the system will check if the app is up or not and send a message to the group accordingly. 

Trust Me, Many organizations spend a lot of money on these simple apps.
