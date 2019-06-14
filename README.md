# CRYPTO_CRASH v1.0.0
CRYPTO_CRASH is a turn-based game placing you in the role of an amateur cryptocurrency trader looking to raise enough money to escape to Canada. Can you navigate the turbulent waters of the crypto market?

![](crypt1.gif)

This Ruby-based CLI application was designed and created by Kurt Bauer and Noah Berman for the Module 1 Final Project at the Flatiron School. The objective was to create a CRUD app to learn data persistence and backend design with ActiveRecord and SQLite3.



# Game Objective

The objective of CRYPTO_CRASH is to accumulate cryptocurrency worth $5,000 by the end of turn ("day") 3. The price will fluctuate based on developments in the rapidly deteriorating global society. Players have the option of selling their precious few, final assets to acquire additional cash.


# Future Update Log

  - Add error message logic for invalid inputs (current-state program simply crashes)
  - Add additional 'events' logic and writing for variety, including increased functionality and scope of impact in how events can affect gameplay
  - With additional events, add more turns and new gameplay mechanics for final turn
  - Add ability to sell cryptocurrency and update rules to have score reflect only cash on hand
    - Requires strategy in monitoring price of crypto in wallet and selling when high

## Getting Started

* download the files
* Navigate to your command line interface, ideally with the BASH shell
* cd into the folder you downloaded

### Prerequisites

* basic knowledge of the terminal

# Installing

  1. Navigate to the local, root directory housing the CRYPTO_CRASH files
  2. Run 'bundle install' in your terminal to install dependency gems
  3. Before each play-through, run 'rake db:seed' in your terminal to reset the game
  4. **TO PLAY:** run 'ruby bin/run.rb'

## Built With

* [Sinatra](http://sinatrarb.com/) - Sinatra is a free and open source software web application library and domain-specific language written in Ruby.
* [Active Record](https://guides.rubyonrails.org/active_record_basics.html) - Active Record facilitates the creation and use of business objects whose data requires persistent storage to a database.
* [Pry](https://github.com/pry/pry) - A runtime developer console and IRB alternative with powerful introspection capabilities.
* [shotgun](https://github.com/rtomayko/shotgun) - This is an automatic reloading version of the rackup command that's shipped with Rack.
* [SQLite3](https://sqlite.org/index.html) - SQLite is a relational database management system contained in a C programming library.
* [TTY Prompt](https://github.com/piotrmurach/tty-prompt) - A beautiful and powerful interactive command line prompt.
* [Pastel](https://rubygems.org/gems/pastel/versions/0.7.1) - Terminal strings styling with intuitive and clean API.

## Authors
* **Kurt Bauer** - [github.com/krtb](https://github.com/krtb)
* **Noah Berman** - [github.com/noah-berman](https://github.com/noah-berman)

# License

Copyright 2018, Kurt Bauer and Noah Berman.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE

## Acknowledgments
Thanks to the [Flatiron School](https://flatironschool.com/)!