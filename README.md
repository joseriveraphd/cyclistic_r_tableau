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

# Executive Summary of Recommendations

Here are the recommendations highlighted in this report:

1.  Require e-mail sign-ups to track user journeys.

2.  Create an <b>e-mail newsletter</b> that targets two clusters of
    casual riders and annual members (based on geospatial data).

3.  Track <b>key performance metrics</b>, such as number of rides based
    on geospatial, hourly, and seasonal trends to monitor the
    <b>effectiveness of the newsletter</b>.

<b><font color="blue"> The following sections contain expanded
insights/recommendations based on daily, hourly, and seasonal usage of
Cyclistic bikes</b></font>:

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

Furthermore, notice that in May the number of casual weekend rides
surpasses the number of weekend rides from annual members. In the
winter, members ride more than casual riders (confirmed in the following
sections).

# Create e-mail newsletter that targets customers based on local rides/engagement

Whether the majority of conversions occur during the summer or not, it
is evident from seasonal trends that most rides for casual and member
customer types take place over the summer.

<p align="center">
<img src="cyclisticreport_files/totalrides_season.png" style="width:70.0%" />
</p>

A digital media campaign based on an e-mail newsletter could keep
Cyclistic users informed of bike-friendly summer events (e.g. festivals,
parks, etc), particularly near Navy Pier (one of Chicago’s most popular
tourist destinations). Navy Pier and recreational events along the coast
should be highlighted given the popularity of Streeter & Grand Ave
station, which is explained below.

## Segment the e-mail list based on geospatial data and number of rides per station

In order to make the e-mail newsletter effective, we can segment the
population of customers. Based on geospatial data we identify two
segments of bike stations for each customer type:

Cluster 1: Stations near the shore (e.g. Navy Pier, Michigan Ave,
Millenium Park) Cluster 2: Stations away away from the shore

The graph below shows the top 3 stations in number of casual riders:

<p align="center">
<img src="cyclisticreport_files/top3stations_casuals.png" style="width:70.0%" />
</p>

Notice that Streeter Dr & Grand Ave dominates in total number of rides
for casual riders. This station is near tourist sites like Navy Pier.
Similarly, Michigan Ave and Millenium Park are popular tourist
attractions. These fall under Cluster 1 for casual riders.

In the following geospatial graph of the top stations (in number of
rides), each circle represents a station. The size of circles represents
the amount of outgoing rides for a given station.

Cluster 1, stations near the shore, are much more popular with casual
riders

<p align="center">
<img src="cyclisticreport_files/casual_stations.png" style="width:70.0%" />
</p>

In contrast, see the top three stations for annual members:

<p align="center">
<img src="cyclisticreport_files/top3stations_members.png" style="width:70.0%" />
</p>

The popularity of stations for customers who are annual members shifts
away from the coast as seen below, where Cluster 2 is more dominant:

<p align="center">
<img src="cyclisticreport_files/member_stations.png" style="width:70.0%" />
</p>

Findings from geospatial data reveal the following trends: 1. Number of
rides in cluster 1 is higher for casual riders 2. Number of rides in
cluster 2 is higher for annual members

The top stations in Cluster 1 contain recreational areas (Navy Pier,
Millenium Park, etc.) while stations in Cluster 2 contain commercial
establishments.

Based on these geospatial trends, I recommend the e-mail newsletter
target each cluster differently.

The data suggests casual riders might join the platform for recreational
reasons and continue to use their membership for work. More evidence is
provided for this statement in the following section.

# Why do casual riders convert to annual members?

When analyzing hourly data, we see a monthly increase in the use of
bikes at 8AM and 5PM which suggests a tendency for annual members to use
bikes during work hours, while casual riders lag in the increase of
ridership during traditional work hours (see graph below).

<p align="center">
<img src="cyclisticreport_files/figure-gfm/plot_rides_hours-1.png" style="width:70.0%" />
</p>

<b>Given the decrease in casual riders and slight increase in members
over Jul-Sep months, as well as hourly and geospatial trends seen above,
it seems casual riders join over the summer for recreational use and,
when they convert, they maximize the benefits of their membership by
riding to work.</b>

# Track key performance metrics to maximize the effectiveness of newsletter

With the current data, we can only keep track of number of rides.
Assuming that is all we have, let’s use weekend and workday number of
rides to monitor the effectiveness of the newsletter.

Based on the increased number of weekend rides for casual riders,
weekend events should be highlighted in the newsletter to promote the
platform to casual riders who are trying to figure out what to do in
Chicago over the weekend.

This would allow us to target casual riders who registered the maximum
number of rides on Saturdays. See graph below for trends in number of
rides per day on a given weekday.

<p align="center">
<img src="cyclisticreport_files/figure-gfm/plot_rides_per_day-1.png" style="width:70.0%" />
</p>

Hourly bike use should also be considered. Based on the graph below,
which shows increased activity for members during (working) lunch hours,
I also recommend the newsletter highlight the benefit of biking to work
and grabbing a bite to eat.

<p align="center">
<img src="cyclisticreport_files/figure-gfm/plot_rides_tod-1.png" style="width:70.0%" />
</p>

Notice the increase in activity during traditional workday hours 8AM and
5PM (08:00 and 17:00 hours in the graphs), and the slight uptick in
rides during lunch hours. In contrast, hourly ride use becomes more
evenly distributed over the weekend.

Therefore, <b>the key performance metrics for the newsletter are the
number of rides per geospatial cluster, weekday vs workday, and hour
(e.g. lunch).</b>

Additional key performance metrics for the future could be number of
sign-ups and conversions based on tracking the user journey with e-mail
addresses that I proposed above.

# Preliminary insights on Cyclistic ride lengths

The mean workday ride length/duration for casual riders was
approximately 24 minutes, and the median was \~14 minutes. In contrast,
the mean workday ride duration for casual riders was \~29 minutes and
the median was \~17 minutes.

It should be noted, however, that the difference in median and mean
values suggests the distribution for ride lengths is skewed positive and
not normally distributed.

The lack of a normal distribution for ride lengths should be noted if
decision-makers decide to follow-up with rigorous statistical modeling.
To provide preliminary insights, let’s look at a visualization of casual
riders and annual member distributions.

<p align="center">
<img src="cyclisticreport_files/figure-gfm/plot_ridelength_density-1.png" style="width:70.0%" />
</p>

# Conclusions

The insights and recommendations presented here are supported by
exploratory data analysis. By requiring casual users to register with
e-mail, we can keep track of the user journey from casual use to annual
membership.

I propose an e-mail newsletter to influence conversions.

Clustering the populations of casual riders and annual members based on
geospatial and hourly trends allows us to target riders based on their
current journey (recreational use vs workday use).

The recommendations presented here provide summarized findings after
data cleaning, analysis, and visualization. For the entire code, see
finalcode.md.
