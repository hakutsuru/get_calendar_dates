require 'date'
require 'pp'


class YourModel

  def get_calendar_dates(year, month, num_week_rows = 6)
    # return array of dates for calendar starting on a Sunday
    # given year and month (as numbers), see date arithmatic
    first_of_month = Date.new(year, month, 1)
    first_of_month_day = first_of_month.wday # (0-6) where Sunday is zero
    days_in_month = [nil, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31][month]
    days_in_month = ( days_in_month + 1 ) if ((month == 2) && Date.new(year).leap?)
    case
    when ((days_in_month == 28) && (first_of_month_day == 0))
      num_week_rows = 4  # non-leap February starting on Sunday
    when ((days_in_month == 30) && (first_of_month_day == 6))
      num_week_rows = 6  # 30-day month starting on Saturday
    when ((days_in_month == 31) && ((first_of_month_day == 5) || (first_of_month_day == 6)))
      num_week_rows = 6  # 31-day month starting on Friday or Saturday
    else
      num_week_rows = 5
    end
    first = first_of_month - first_of_month_day
    last = first + num_week_rows * 7
    (first...last).to_a
  end

end


if $0 == __FILE__
  ymi = YourModel.new
  pp ymi.get_calendar_dates(2012,6)
end
