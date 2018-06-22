#### CRYPTO_CRASH v1.0.0 ####

# About

This Ruby-based CLI application was designed and created by Kurt Bauer and Noah Berman for the Module 1 Final Project at the Flatiron School. The objective was to create a CRUD app to learn data persistence and backend design with ActiveRecord and SQLite3.

CRYPTO_CRASH is a turn-based game placing you in the role of an amateur cryptocurrency trader looking to raise enough money to escape to Canada. Can you navigate the turbulent waters of the crypto market?

# Install

CRYPTO_CRASH is run in the BASH terminal and requires the following steps to run:

  1. Navigate to the local, root directory housing the CRYPTO_CRASH files
  2. Run 'bundle install' in your terminal to install dependency gems
  3. Before each play-through, run 'rake db:seed' in your terminal to reset the game
  4. **TO PLAY:** run 'ruby bin/run.rb'

# Game Objective

The objective of CRYPTO_CRASH is to accumulate cryptocurrency worth $5,000 by the end of turn ("day") 3. The price will fluctuate based on developments in the rapidly deteriorating global society. Players have the option of selling their precious few, final assets to acquire additional cash.


# Future Update Log

  - Add error message logic for invalid inputs (current-state program simply crashes)
  - Add additional 'events' logic and writing for variety, including increased functionality and scope of impact in how events can affect gameplay
  - With additional events, add more turns and new gameplay mechanics for final turn
  - Add ability to sell cryptocurrency and update rules to have score reflect only cash on hand
    - Requires strategy in monitoring price of crypto in wallet and selling when high

# License

Copyright 2018, Kurt Bauer and Noah Berman.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE
