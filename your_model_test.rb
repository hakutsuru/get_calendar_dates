$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'minitest/spec'
require 'minitest/autorun'
require 'your_model'


describe YourModel do

  it "should display correct number of rows in calendar for month and year" do
    ymi = YourModel.new # create your-model-instance

    # being simpleminded, test an awesome year
    ymi.get_calendar_dates(2012, 1).size.must_equal 35
    ymi.get_calendar_dates(2012, 2).size.must_equal 35
    ymi.get_calendar_dates(2012, 3).size.must_equal 35
    ymi.get_calendar_dates(2012, 4).size.must_equal 35
    ymi.get_calendar_dates(2012, 5).size.must_equal 35
    ymi.get_calendar_dates(2012, 6).size.must_equal 35
    ymi.get_calendar_dates(2012, 7).size.must_equal 35
    ymi.get_calendar_dates(2012, 8).size.must_equal 35
    ymi.get_calendar_dates(2012, 9).size.must_equal 42
    ymi.get_calendar_dates(2012, 10).size.must_equal 35
    ymi.get_calendar_dates(2012, 11).size.must_equal 35
    ymi.get_calendar_dates(2012, 12).size.must_equal 42

    # special case of non-leap-year February
    # starting on Sunday, thus 4 weeks
    ymi.get_calendar_dates(2009, 02).size.must_equal 28
  end

end
