
Date.new
Date.new(2015, 3, 1)

Date.parse('March 1st, 2015')
Date.parse("It's 2015, everyone!") ## invalid

Date.strptime("It's 2015, everyone!", "It's %Y, everyone!")

Date.today
Date.today + 1
Date.today - 1
Date.today << 1 # (subtract month)
Date.today >> 1 # (add month)

Date.today.strftime('%Y %m, %d')
Date.today.strftime('%m %d, %Y')


time = Time.new
time.min
time.hour
time.sec
time.month
time.day
time.monday?
time.year
time + 1 ## adds 1 second
time + 60 ## adds 1 minute
time < Time.now  ## True or False

time1 = Time.new(2014, 7, 1, 12, 0, 0, '-05:00')
