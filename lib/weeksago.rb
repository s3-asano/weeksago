require "weeksago/version"
require "date"

module Weeksago

  def self.weeksago(input_d: '', base_d: Date.today, wstrt_d: 'mon')
=begin
Weekago is a method to find out how many weeks ago the date entered is from the base date.
 input_d : Requested day.
 base_d  : option. Based day. Default is today.
 wstrt_d : option. Start day of the week. Default is Monday.
=end
  # set base day
  if base_d.is_a?(String)
    bs_day = Date.parse(base_d)
  else
    bs_day = Date.today
  end
  # set input day
  i_date = Date.parse(input_d)
  # set day of the week by wday method
  day = bs_day.wday
  # Absorbs the difference due to the difference in start day of the week
  unless wstrt_d == "mon"
    bs_day = bs_day - 1
  end
  # ask for base day
  case day
  when 0 then
    if wstrt_d == "mon"
      wst_day = bs_day - 6
    else
      wst_day = bs_day + 1
    end
  when 1 then
    wst_day = bs_day
  when 2 then
    wst_day = bs_day - 1
  when 3 then
    wst_day = bs_day - 2
  when 4 then
    wst_day = bs_day - 3
  when 5 then
    wst_day = bs_day - 4
  when 6 then
    wst_day = bs_day - 5
  end
  # ask for week ago
  if i_date < wst_day
    wkag = (wst_day - i_date).div(7) + 1
  else
    wkag = 0
  end
  return wkag
  end
end
