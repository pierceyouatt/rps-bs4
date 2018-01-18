# RPS Bootstrap

## Setup

Follow the usual setup steps:

 1. Open your same old Cloud9 workspace.
 1. Close all open tabs/IDE panes from the last project you were working on — it's very easy to get confused with too many tabs going.
 1. In the left-sidebar, the file "drawer", click the gear icon in the top-right and select "Collapse All Folders" to fold away all of the stuff from the last project you were working on.
 1. Open a new Terminal prompt by clicking the green ⨁.
 1. Ensure that you're in your `workspace` folder — if not,

    ```
    cd ~/workspace
    ```

 1. Download this project to your workspace:

    ```
    git clone https://github.com/appdev-projects/rps-bs4
    ```

 1. Navigate into the new project folder:

    ```
    cd rps-bs4
    ```

 1. Set up the project (ensure that your workspace has the required libraries installed, etc):

    ```
    bin/setup
    ```

 1. Launch your Rails application server:

    ```
    bin/server
    ```

 1. From the Preview menu, select "Preview Running Application". I like to pop-out the resulting preview into its own Chrome tab.

 1. If, as you're working, you find that changes you make to your code are not being reflected in the app when you refresh it, then try ["hard" refreshing (i.e. bypassing the browser cache)](https://en.wikipedia.org/wiki/Wikipedia:Bypass_your_cache#Google_Chrome).

## First target

[http://rps-bs4-first.herokuapp.com/](http://rps-bs4-first.herokuapp.com/)

## Intermediate target

[http://rps-bs4-intermediate.herokuapp.com/](http://rps-bs4-intermediate.herokuapp.com/)

## Final target

[http://rps-bs4-final.herokuapp.com/](http://rps-bs4-final.herokuapp.com/)
