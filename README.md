Actionable insights for Cyclistic marketing department
================

The Cyclistic marketing department is developing a strategy for
converting casual riders to annual members (subscribers). The analytic
goals of this project are to <b> understand how annual members and
casual riders use Cyclistic bikes differently and <i>why</i> casual
riders might join the platform</b>. As part of their strategy, the
marketing team seeks advice on using digital media to influence
conversions.

**For the full detailed analysis with code, see <a href="https://github.com/joseriveraphd/cyclistic_r_tableau/blob/master/finalcode.md"> finalcode.md</a>. Note that
cyclistic_r.Rproj is a reproducible project in RStudio.**

# Executive Summary of Recommendations & Insights

Here are the recommendations and insights <b>in priority order</b>:

1.  The number of customers is maximized during the summer months, with a potential conversion event taking place that merits further investigation. 

2.  Track <b>key performance metrics</b> including the number of
    trips/rides by casual riders vs annual members/subscribers based on
    geospatial, hourly, and seasonal trends, due to <b>observed
    differences that can aid in persona development</b>.

3.  Tailor marketing campaigns based on customer type (casual rider vs
    annual member), season of the year, hourly trends, and locations.
    
4.  Follow-up with more rigorous geospatial clustering analysis (Data Science team).

<b><font color="blue"> The following sections contain expanded
insights/recommendations based on daily, hourly, and seasonal usage of
Cyclistic bikes</b></font>:

# Potential conversion event during summer months

The greatest number of rides for both casual riders and annual members
are registered over the summer. There is a \~5% increase in workday
monthly rides from Jul-Sep for annual members, but a \~16% decrease in
casual rides over the same seasonal period. See graph below.

<p align="center">
<img src="cyclisticreport_files/figure-gfm/plot_rides_month-1.png" style="width:70.0%" />
</p>

<i>This trend inspires us to wonder whether there is a conversion of
casual riders taking place. </i> In this report, we draw insights from the data as a first round of exploratory data analysis to explore why customers might be converting and to eventually help in developing a buyer persona.

We leave this section with an additional insight: notice that in May the number of casual weekend rides
surpasses the number of weekend rides from annual members. In the
winter, members ride more than casual riders (confirmed in the following
sections).

# Seasonal, hourly, and geospatial trends

Whether the majority of conversions actually occur during the summer or not, it
is evident from seasonal trends that most rides for casual and member
customer types take place over the summer.

<p align="center">
<img src="cyclisticreport_files/totalrides_season.png" style="width:70.0%" />
</p>

A digital media campaign (e.g.??e-mail newsletter) that focuses on bike-friendly summer events (e.g.??festivals, parks, etc),
particularly near Navy Pier (one of Chicago???s most popular tourist
destinations), might be useful. We leave this to the Marketing team to decide. Navy Pier and recreational events along the coast can also
be highlighted given the popularity of Streeter & Grand Ave station,
which is explained below.

Digital communications during winter could change to retain customer
loyalty during winter months. These riders can be targeted based on
geospatial location data as seen below.

## Grouping customers based on geospatial data and number of rides per station

In order to increase the effectiveness of the campaign, we can target
segments of customers. In this analytic report, we are only looking at trends that are visually apparent. 

I recommend the Data Science team follow-up with more rigorous clustering analysis. 

Based on geospatial data we identify two groups of bike stations for each customer type (casual rider vs annual member):

1.  Group 1: Stations away away from the shore 
2.  Group 2: Stations near the shore (e.g.??Navy Pier, Michigan Ave,
    Millenium Park)

The graph below shows the top 3 stations in number of casual riders:

<p align="center">
<img src="cyclisticreport_files/top3stations_casuals.png" style="width:70.0%" />
</p>

Notice that Streeter Dr & Grand Ave dominates when it comes to the total number of rides
for casual riders. This station is near tourist sites like Navy Pier.
Similarly, Michigan Ave and Millenium Park are popular tourist
attractions. 

In the following geospatial graph of the top stations (in number of
rides), each circle represents a station. The size of circles represents
the amount of outgoing rides for a given station.

<p align="center">
<img src="cyclisticreport_files/casual_stations.png" style="width:70.0%" />
</p>

In contrast, see the top three stations for annual members:

<p align="center">
<img src="cyclisticreport_files/top3stations_members.png" style="width:70.0%" />
</p>

The popularity of stations for customers who are annual members shifts
away from the coast as seen below:

<p align="center">
<img src="cyclisticreport_files/member_stations.png" style="width:70.0%" />
</p>

Findings from geospatial data reveal the following trends:

1.  Number of rides in Group 1 is higher for annual members

2.  Number of rides in Group 2 is higher for casual riders

The top stations in Group 2 contain recreational areas (Navy Pier,
Millenium Park, etc.) while stations in Group 1 contain a mix of
commercial and tourist establishments.

The data suggests casual riders might join the platform for recreational
reasons and continue to use their membership for work. More evidence is
provided for this statement in the following section.

# Why do casual riders convert to annual members?

<b>Given the decrease in casual riders and slight increase in members
over Jul-Sep months, as well as hourly and geospatial trends seen above,
it seems casual riders join over the summer for recreational use and,
when they subscribe, they maximize the benefits of their membership by
riding to work.</b> This hypothesis should be validated with additional
research (e.g.??qualitative research).

When analyzing hourly data, we see a monthly increase in the use of
bikes at 8AM and 5PM which suggests a tendency for annual members to use
bikes during work hours, while casual riders lag in the increase of
ridership during traditional work hours (see graph below).

<p align="center">
<img src="cyclisticreport_files/figure-gfm/plot_rides_hours-1.png" style="width:70.0%" />
</p>

# Track key performance metrics to maximize the effectiveness of any digital campaign

With the current data, we can only keep track of number of rides.
Assuming that is all we have, let???s use <b> weekend and workday number
of rides per customer type </b> to monitor the effectiveness of the
campaign.

Based on the increased number of weekend rides for casual riders, local
weekend events should be highlighted in digital communications to
encourage more people to ride and discover Chicago over the weekend.

This would allow us to target casual riders who registered the maximum
number of rides on Saturdays. See graph below for trends in number of
rides per day on a given weekday.

<p align="center">
<img src="cyclisticreport_files/figure-gfm/plot_rides_per_day-1.png" style="width:70.0%" />
</p>

Hourly bike use should also be considered. Based on the graph below,
which shows increased activity for members during (working) lunch hours,
I also recommend a digital campaign that highlights the benefits of
biking to work and grabbing a quick bite to eat.

<p align="center">
<img src="cyclisticreport_files/figure-gfm/plot_rides_tod-1.png" style="width:70.0%" />
</p>

Notice the increase in activity during traditional workday hours 8AM and
5PM (08:00 and 17:00 hours in the graphs), and the slight uptick in
rides during lunch hours. In contrast, hourly ride use becomes more
evenly distributed over the weekend.

Therefore, <b>the key performance metrics are the number of rides per
customer type based on geospatial groups, weekday vs workday, and time
of day (e.g.??lunch).</b>

# Additional insights on Cyclistic ride lengths

The mean workday ride length/duration for casual riders was
approximately 24 minutes, and the median was \~14 minutes. In contrast,
the mean workday ride duration for casual riders was \~29 minutes and
the median was \~17 minutes.

It should be noted, however, that the difference in median and mean
values suggests the distribution for ride lengths is skewed positive and
not normally distributed.

The lack of a normal distribution for ride lengths should be noted if
decision-makers decide to follow-up with rigorous statistical modeling.
To provide preliminary insights, let???s look at a visualization of casual
riders and annual member distributions.

<p align="center">
<img src="cyclisticreport_files/figure-gfm/plot_ridelength_density-1.png" style="width:70.0%" />
</p>

# Conclusions

The insights and recommendations provided were supported by
exploratory data analysis. 

Summer months provide one possible seasonal target for marketing efforts. Grouping the populations of casual riders and annual members based on
geospatial and hourly trends allows us to target riders based on their
current journey (recreational use vs workday use). Furthermore, the key performance metrics proposed here can be tracked to monitor the effectiveness of marketing efforts. 

The recommendations presented here provide summarized findings after
data cleaning, analysis, and visualization. For the entire code, see
finalcode.md.
