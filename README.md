<img src="public/img/preview.png" alt="A preview of Word Definer">
  
### by: Micah L. Olson
### created: 3/5/2021
* * * 

## Description
Geared towards children's education, this application will allow a user to enter a new word they've learned and its definition, see a full list of words and retrieve their definitions, and edit or delete words and definitions.
  
**Play with the application** on Heroku [here](https://frozen-chamber-40405.herokuapp.com/).  
* * *

## Technologies
* HTML
* CSS
* Bootstrap 4.6.0
* Google Fonts API
* Ruby 2.6.5
* Sinatra 2.1.0
* Embedded Ruby (ERB)
* Bundler 1.17.2
* RSpec 3.10
* Capybara 3.34.0
* Pry 0.14.0
* git 2.30.1
* Heroku
* * *

## Requirements
* You will need to use your system's **terminal emulator** to setup and locally use this application.
* You **must** have `Ruby 2.6.5` installed to be able to launch this application ([how to install Ruby 2.6.5](https://www.learnhowtoprogram.com/ruby-and-rails/getting-started-with-ruby/installing-ruby)).
* `Bundler` is also **required**. *After you install `Ruby`*, it can be installed with the following command.
  ```bash
  $ gem install bundler
  ```
***

## Installation and Setup
* **Clone this repository** to a local directory using the command-line tool `git` ([how to install git](https://www.learnhowtoprogram.com/introduction-to-programming/getting-started-with-intro-to-programming/git-and-github)).  
  ```bash
  $ cd ~/<directory>/<path>/<of>/<choice>/
  $ git clone https://github.com/MicahOlson/word_definer.git
  ```

* **Navigate into the project** using `cd` to move to the top level of the project directory.  
  ```bash
  $ cd word_definer/
  ``` 

* **Install all application dependencies** using `Bundler`. This will install all packages (also known as *Gems*) listed in the project's `Gemfile`.
  ```bash
  $ bundle install
  ```

* **Launch the application** in your system's default browser (if it doesn't open automatically after running the command below, type localhost:4567 into your browser's address bar and click go).
  ```bash
  $ ruby app.rb
  ```
***

## Testing
* This project was created using **test-driven development** (TDD).

* To **see the *unit* and *integration* test suites**, use `cat` to view the contents of this project's specs files (or open them in a code editor; see below).
  ```bash
  $ cat spec/word_spec.rb
  ```
  ```bash
  $ cat spec/definition_spec.rb
  ```
  ```bash
  $ cat spec/word_integration_spec.rb
  ```

* To **run the test suites** yourself and verify program functionality use `RSpec`, one of the *Gems* installed by `Bundler` in the instructions above.
  ```bash
  $ rspec
  ```
***

## Code Editors
* If you would like to utilize a GUI for opening or editing this project's files, here are some **recommended code editors**:
  * [Visual Studio Code](https://code.visualstudio.com) - "Code editing. Redefined."
  * [Atom](https://atom.io) - "A hackable text editor for the 21st Century"
  * [SublimeText](https://www.sublimetext.com) - "A sophisticated text editor for code, markup and prose"
***

## Notes, Bugs, Fixes, and Future Improvements
* This application does not use a persistent database; all entries will be lost when the application is closed.
* There are no feature enhancements currently scheduled for this application.
* If you find a bug, please report it at the email address below.
***

## License
[GPLv3](https://choosealicense.com/licenses/gpl-3.0/)\
Copyright &copy; 2021 Micah L. Olson
* * *

## Contact Information
Micah L. Olson at <a href="https://www.linkedin.com/in/micah-lewis-olson/" target="_blank">LinkedIn</a> or by <a href="mailto:micah.olson@protonmail.com" target="_blank">email</a>.