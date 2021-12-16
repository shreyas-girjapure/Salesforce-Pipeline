### Notes

    Below are some observations that were made while creating CI CD for salesforce from scratch

#### Adding support for prettier format

    Plan was to add prettier formatting support so that all of the code remains in sync

    problem with the prettier is that it adds a extra space in mostly xml ymls and line break at the end of js

    this causes problems in case of scheduled refresh of branch with source code.

    Currently all of the problem causing files have been removed

    Also .cls files are excluded from the formatting , Prettier is causing issues with formatting of those files.

#### Profiles Deployment issues

    If you delete a class and try to deploy your code next via metadata api you will get errors while deploying your all of the profiles

    So currently profiles have been removed from package.xml

#### Schedular Runs

    Schedular runs of github actions are not on time

    Currently they are set to be run every 10 minutes but are not behaving as expected

#### Run Apex server

    This needs to be checked again but problem is that on local apex server never starts

    this is to format and validate apex code before deployment.
