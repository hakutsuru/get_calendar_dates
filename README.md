## Get Calendar Dates
### Orientation

*Disclaimer: I may never use github the way it is intended. I have plans to share gems and projects that may involve collaboration, but I suspect most of my "projects" will be little more than code showcases.*

This was the first bug I fixed on a recent job, a scheduling calendar was assigned with five rows and there were months that required six...

There are certainly cases where using six fixed rows for a calendar makes sense. When the calendar is the central focus of a web page, however, it feels more natural for the calendar rows to adjust, much like iPhone "Calendar" and OS X "iCal".

And as you might expect, I went searching for an algorithm to determine leap years and such. What I found were several hacks that made Ruby seem ugly and incomprehensible. If I could not figure out what was being done in seconds, how much time would the code waste in years to come?

So I was motivated to devise something *simple* and *readable*, and though the problem may be trivial, it seemed a triumph to handle it quickly and cleanly.

A Ruby acolyte may create numerous smaller methods to solve this problem, and I think that would be a mistake -- unless the smaller methods would be used elsewhere. I added an orienting comment, to clarify what is happening in the last three lines.

For testing, I used iCal to determine the results for a year, and then sought out the odd *non-leap year February starting on a Sunday* case.

*Comments condemning me for using a dozen lines for a task that can be hacked into two lines will be deemed amusingly anti-social ;)*


### Environment
    Macintosh-2:~] direwolf% ruby --version
    ruby 1.9.2p290 (2011-07-09 revision 32553) [x86_64-darwin10]


### Example Code Run -- e.g. *get_calendar_dates(2012,6)*
    [Macintosh-2:~] direwolf% ruby [...]/get_calendar_dates/your_model.rb 
    [#<Date: 2012-05-27 (4912149/2,0,2299161)>,
     #<Date: 2012-05-28 (4912151/2,0,2299161)>,
     #<Date: 2012-05-29 (4912153/2,0,2299161)>,
     #<Date: 2012-05-30 (4912155/2,0,2299161)>,
     #<Date: 2012-05-31 (4912157/2,0,2299161)>,
     #<Date: 2012-06-01 (4912159/2,0,2299161)>,
     #<Date: 2012-06-02 (4912161/2,0,2299161)>,
     #<Date: 2012-06-03 (4912163/2,0,2299161)>,
     ...
     #<Date: 2012-06-28 (4912213/2,0,2299161)>,
     #<Date: 2012-06-29 (4912215/2,0,2299161)>,
     #<Date: 2012-06-30 (4912217/2,0,2299161)>]


### Example Test Run
    [Macintosh-2:~] direwolf% ruby [...]/get_calendar_dates/your_model_test.rb
    Loaded suite [...]/get_calendar_dates/your_model_test
    Started
    .
    Finished in 0.002095 seconds.
    
    1 tests, 13 assertions, 0 failures, 0 errors, 0 skips
    
    Test run options: --seed 32557
