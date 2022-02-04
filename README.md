Actionable insights for Cyclistic marketing department
================

The Cyclistic marketing department is developing a strategy for
converting casual riders to annual members (subscribers). The analytic
goals of this project are to <b> understand how annual members and
casual riders use Cyclistic bikes differently and <i>why</i> casual
riders might join the platform</b>. As part of their strategy, the
marketing team seeks advice on using digital media to influence
conversions.

For the full detailed analysis with code, see finalcode.md. Note that
cyclistic_r.Rproj is a reproducible project in RStudio.

<b><font color="blue">The following insights/recommendations are based
on daily, hourly, and seasonal usage of Cyclistic bikes</b></font>:

# Monitor Cyclistic user journeys using e-mail sign-ups

The greatest number of rides for both casual riders and annual members
are registered over the summer. There is a \~5% increase in workday
monthly rides from Jul-Sep for annual members, but a \~16% decrease in
casual rides over the same seasonal period. See graph below.

<p align="center">
<img src="cyclisticreport_files/figure-gfm/plot_rides_month-1.png" style="width:70.0%" />
</p>

<i>This trend inspires us to wonder whether there is a conversion of
casual riders taking place. To validate this claim, I recommend tracking
user journeys in the Cyclistic platform.</i> One way to do this is to
require first-time casual riders to enter their e-mail before taking out
a bike. This would allow us to track conversions by monitoring the
activity of casual riders who sign up for a membership <i>at a later
date with the same e-mail address</i>.

# Why do casual riders convert to annual members?

When analyzing hourly data, we see a monthly increase in the use of
bikes at 8AM and 5PM which suggests a tendency for annual members to use
bikes during work hours, while casual riders lag in the increase of
ridership during traditional work hours (see graph below).

<p align="center">
<img src="cyclisticreport_files/figure-gfm/plot_rides_hours-1.png" style="width:70.0%" />
</p>

Given the decrease in casual riders and slight increase in members over
Jul-Sep months, as well as hourly trends seen above, it could be that
casual riders join over the summer for recreational use and maximize the
benefits of their membership by riding to work.

The recreational use of bikes for casual riders is supported by the
popularity of stations near Navy Pier during the summer season,
explained in the following sections.

# Create e-mail newsletter and blog that highlights weekend and summer recreational events

Whether the majority of conversions occur during the summer or not, it
is evident from seasonal trends that most rides for casual and member
customer types take place over the summer.

<p align="center">
<img src="cyclisticreport_files/totalrides_season.png" style="width:70.0%" />
</p>

A digital media campaign based on an e-mail newsletter could keep
Cyclistic users informed of bike-friendly summer events (e.g. festivals,
parks, etc), particularly near Navy Pier (one of Chicago’s most popular
tourist destinations).

Geospatial data reveals that riders frequently ride from bike stations
near the water in the summer. In particular, Streeter Dr & Grand Ave is
the most popular station during the Summer and is located near Navy
Pier.

In the following geospatial graphs of the top 25 stations (in number of
rides), each circle represents a station. The size of circles represents
the amount of outgoing rides for a given station. Notice the dominance
of casual rides (red) over annual member rides (light blue) during the
summer season. The winter season shows the opposite trend: higher
ridership from annual members. Furthermore, station popularity shifts
away from the coast.

Note also the decrease in popularity of Navy Pier during Winter relative
to Summer.

<p align="center">
<img src="cyclisticreport_files/Summer.png" style="width:70.0%" />
<img src="cyclisticreport_files/Winter.png" style="width:70.0%" />
</p>
Furthermore, promoting the newsletter through a blog for non-Cyclistic
users could promote the platform to people who are trying to figure out
what to do in Chicago over the weekend. This would allow us to target
casual riders who registered the maximum number of rides on Saturdays.
See graph below for trends in number of rides per day on a given
weekday.
<p align="center">
<img src="cyclisticreport_files/figure-gfm/plot_rides_per_day-1.png" style="width:70.0%" />
</p>

Hourly bike use was also considered. Based on the graph below, which
shows increased activity for members during (working) lunch hours, I
also recommend the newsletter highlight the flexibility of biking to
work and grabbing a bite to eat.

<p align="center">
<img src="cyclisticreport_files/figure-gfm/plot_rides_tod-1.png" style="width:70.0%" />
</p>

Notice the increase in activity during traditional workday hours 8AM and
5PM (08:00 and 17:00 hours in the graphs), and the slight uptick in
rides during lunch hours. In contrast, hourly ride use becomes more
evenly distributed over the weekend.

# How long are Cyclistic rides?

The mean workday ride length/duration for casual riders was
approximately 24 minutes, and the median was \~14 minutes. In contrast,
the mean workday ride duration for casual riders was \~29 minutes and
the median was \~17 minutes.

<font color="red">It should be noted, however, that the difference in
median and mean values suggests the distribution for ride lengths is
skewed positive and not normally distributed. <b>The lack of a normal
distribution for ride lengths should be noted if decision-makers decide
to follow-up with rigorous statistical modeling</b>.</font> To provide
preliminary insights, let’s look at a visualization of casual riders and
annual member distributions.

<p align="center">
<img src="cyclisticreport_files/figure-gfm/plot_ridelength_density-1.png" style="width:70.0%" />
</p>

# Full analysis code

The recommendations presented here provide summarized findings after
data cleaning, analysis, and visualization. For the entire code, see
finalcode.md.
