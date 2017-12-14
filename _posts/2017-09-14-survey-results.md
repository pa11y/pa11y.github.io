---
title: The Pa11y User Survey 2017 results
description: We ran the survey from August 15th to September 11th. Here's what we learned about you!
date: 2017-12-08
author:
  name: Hollie Kay
  url: http://hollsk.co.uk
---

We wanted to find out more about how our users use our tools, what sort of things people think we're doing well, and what sort of things we could do better. So we decided to run a survey to learn how you feel about the four main Pa11y packages. 

We ran the survey from August 15th to September 11th. Here's what we learned about you!

## Table of contents

* [About our users](#about-our-users)
* [Pa11y CLI](#pa11y-cli)
* [Pa11y Dashboard](#pa11y-dashboard)
* [Pa11y Webservice](#pa11y-webservice)
* [Pa11y CI](#pa11y-ci)
* [What we plan to improve](#what-we-plan-to-improve)
	* [Documentation, tutorials, and alternatives](#documentation-tutorials-and-alternatives)
	* [Code changes](#code-changes)
* [Conclusions](#conclusions)


## About our users

More than three quarters of our respondents are developers. 

![Pie chart: Do you mainly see yourself as a... Developer 72%; QA tester 5%; Accessibility tester 6%; UX specialist 6%; Other 11%](/asset/image/2017-survey/1-job-type.png)

Over three quarters of our respondents use Pa11y for work. 

20% of respondents use Pa11y only for personal projects, and 10% for both work and personal. There's no particular pattern in the way our respondents use Pa11y and the way they describe their job roles. 
 
![Bar chart: What do you use Pa11y for?](/asset/image/2017-survey/1-use-case.png)


## Pa11y CLI

The Pa11y command line tool is the “core” tool. It’s a simple command line interface that loads a URL and an optional configuration file, then runs HTML Codesniffer to generate a report on any accessibility errors it finds.  

Two thirds of respondents have used the Pa11y CLI. 

![Pie chart: Have you ever used the Pa11y command line tool? Used 67%; Not used 33%](/asset/image/2017-survey/2-pa11y-cli.png)

Of those who _haven’t_ used it, one third of respondents say that it’s too difficult to set up, and one third have simply never heard of it. The rest just don't have a need for it. 

![Bar chart: Is there a reason that you've never used the Pa11y command line tool?](/asset/image/2017-survey/2-not-used.png)

Of those who _have_ used Pa11y CLI, we asked how easy/hard it is to set up. None of these respondents found it very difficult, but otherwise there is an even spread across the easy-to-hard spectrum. Most of the respondents who have used Pa11y CLI are developers; we’d expect this for a command-line tool. Greater familiarity with the command line amongst this group will also skew the results towards the “easier” end of the spectrum. 

![Bar chart, scale of 1 (easier) to 5 (harder): How easy did you find it to set up the Pa11y CLI? 25% each for 1 to 4](/asset/image/2017-survey/2-setup.png)

Once set up, most people find Pa11y CLI easy to use. Those that found it more difficult tend to be doing more complex things with it, and overall people find it more difficult to integrate Pa11y CLI into their existing workflow. 

![Bar chart, scale of 1 (easier) to 5 (harder): How easy did you find it to use the Pa11y CLI and to integrate it with your workflow? 50% for 1; almost 15% for 2 and 3; 25% for 4](/asset/image/2017-survey/2-use-integrate.png)

When we asked “what would make Pa11y CLI easier for you to integrate with your workflow?”, some of our respondents who found Pa11y CLI a little harder to use and to integrate said the following:

<ul>
	<li><q>Better examples for different situations -- integration with node or non-node apps.</q></li>
	<li><q>multiple urls support</q></li>
	<li><q>Command lines are inherently difficult</q></li>
</ul>

We also asked about things we could do to make Pa11y CLI easier to use and to set up. Although a lot of people suggested that the documentation could be improved, more people said that they’d find tutorials helpful. This makes a lot of sense - things become more difficult as you start doing more complex work that takes you away from the basic use cases in the documentation. 

[Ide Aderinokun’s recent post](https://bitsofco.de/pa11y/) on accessibility testing with Pa11y was called out as being particularly helpful. 

We asked people what they like about Pa11y CLI. Most of the responses were from developers, who already find it easier to use and to work with:

<ul>
	<li><q>Simple and easy to use.</q></li>
	<li><q>excellent</q></li>
	<li><q>The ease of use and UNIX WIZARDY!</q></li>
	<li><q>easier</q></li>
	<li><q>I like the output of the errors, and the ability to just scan for certain errors in certain page sections.</q></li>
</ul>

We also asked people what they don’t like so much. Again, mostly developers responded. 

<ul>
	<li><q>Doesn't show all the issues up front.</q></li>
	<li><q>limited</q></li>
	<li><q>I'm currently evaluating if I like how thorough the scan is.</q></li>
</ul>


## Pa11y Dashboard

The Pa11y Dashboard is our second most popular tool. It's a web interface that uses Pa11y CLI to automatically run daily accessibility tests. The results are displayed as graphs to help users easily track improvements and regressions over time. The web front end provides a more accessible interface for non-developer stakeholders. 

Half of our respondents have used Pa11y Dashboard. 

![Pie chart: Have you ever used the Pa11y Dashboard? 50% yes; 50% no](/asset/image/2017-survey/3-pa11y-dashboard.png)

Of those who haven’t used it, more than half have simply never heard of it. The majority of the others just don’t need it for their purposes. One respondent found it too difficult to set up or use.

![Bar chart: Is there a reason that you've never used the Pa11y Dashboard? 60% have never heard of it, 25% don't need it](/asset/image/2017-survey/3-not-used.png)

The majority of respondents found Pa11y Dashboard easy to set up. Unlike Pa11y CLI there was no skew towards developers finding setup easier - developers were actually _more_ likely to report difficulty in setting up than non developers. It’s not clear from the results why this might be. 

![Bar chart, scale of 1 (easier) to 5 (harder): How easy did you find it to set up the Pa11y dashboard? 35% found it easy, with numbers decreasing towards the harder end of the scale.](/asset/image/2017-survey/3-setup.png)

Once set up, most people find the Dashboard easy to use and easy to integrate with their workflow. 

![Bar chart, scale of 1 (easier) to 5 (harder): How easy did you find it to use the Pa11y Dashboard? around 35% each for 1 and 2; around 10% for 3 and 4;](/asset/image/2017-survey/3-use.png)
![Bar chart, scale of 1 (easier) to 5 (harder): How easy did you find it to integrate the Pa11y Dashboard with your workflow? 50% for 1; 15% for 2 and 3; 25% for 4](/asset/image/2017-survey/3-integrate.png)

We asked people what would make it easier for them to set up and use Pa11y Dashboard. Respondents overwhelmingly said they want better documentation. We also asked what would help better integrate Pa11y Dashboard with user workflows. Most respondents had specific features in mind that would help them get information to stakeholders, particularly for larger websites or collections of web properties. 

<ul>
	<li><q>email reports</q></li>
	<li><q>Being able to sort elements on the dashboard, and having multiple dashboard "pages". In one page we could see all of our competition, in another our own site pages, if that makes sense</q></li>
	<li><q>display all errors and issues</q></li>
	<li><q>multiple urls support</q></li>
</ul>

We asked what people like about Pa11y Dashboard. Respondents find the visual comparisons helpful:

<ul>
	<li><q>Graphs</q></li>
	<li><q>great way to overview our sites and see historical reports</q></li>
	<li><q>Ease of use</q></li>
	<li><q>Seeing our errors go down, or stay at zero. Keeping an eye on the competition, being able to have a history of improvements we've made to the site</q></li>
	<li><q>easy to glance at issues, more friendly to non-developers</q></li>
	<li><q>Easy</q></li>
</ul>

We also asked what people don’t like so much about Pa11y Dashboard. Most of these respondents would like to see improvements to the UX of the dashboard itself. One user reported stability issues. 

<ul>
	<li><q>limited to last 30 days</q></li>
	<li><q>Colours seems to be clashing.</q></li>
	<li><q>If left alone it tends to fail (widgets not load any data)</q></li>
	<li><q>not able to see all errors and issues</q></li>
	<li><q>Limited</q></li>
</ul>


## Pa11y Webservice

The Pa11y webservice is the JSON-based webservice that supports Pa11y Dashboard. It allows you to integrate Pa11y with existing dashboards, build your own dashboard-like front ends, or repurpose Pa11y report data for consumption by other services. 

Less than a quarter of our respondents have used the Pa11y Webservice. 

![Pie chart: Have you ever used the Pa11y webservice? 17% yes; 83% no](/asset/image/2017-survey/4-pa11y-webservice.png)

Reasons for not using the Webservice were varied, but most people (80%) just hadn’t heard of it. Others said that it doesn’t do what they need, or that another tool fits their purposes better. 

The Webservice is supposed to complement DIY solutions to dashboard services, so we weren’t expecting many people to have used this on its own. Pa11y Dashboard uses the Webservice under the hood and so the Dashboard (being a complete solution) is what the majority of users are likely to be interested in. 

Our respondents who have used the Pa11y Webservice report it mostly being easy to use and set up:

![Bar chart, scale of 1 (easier) to 5 (harder): How easy did you find it to set up / use the Pa11y webservice? 70% for 2; 30% for 4](/asset/image/2017-survey/4-setup-use.png)

They also reported it as being middling at integrating with their workflow:

![Bar chart, scale of 1 (easier) to 5 (harder): How easy did you find it to integrate the Pa11y webservice with your workflow? 30% for 2; 70% for 3](/asset/image/2017-survey/4-integrate.png)

We asked these respondents what would make it easier to set up, use, and integrate Pa11y Webservice with their workflow. In all cases, our respondents (all self-identified as developers) wanted more complete documentation. The responses from these individuals strongly suggest that they're power users who know precisely what they want to achieve with the tool. 


## Pa11y CI

Pa11y CI is a command-line tool that iterates over a list of web pages and runs Pa11y on them. It's designed to make it easier to use Pa11y with your Continuous Integration software. 

Almost 3 quarters of our respondents have never used Pa11y CI. 

![Pie chart: Have you ever used the Pa11y CI? 22% yes; 72% no](/asset/image/2017-survey/5-pa11y-ci.png)

Of those respondents who have never used Pa11y CI, we asked for their reasons. Their responses were quite varied, but around 40% of respondents have never heard of it. A few respondents said they’d like to use it but just hadn’t got round to it yet. Pa11y CI is a comparatively new addition to our ecosystem, but the responses here are encouraging; people seem to like the idea of integrating Pa11y with their CI! 

![Bar chart: Is there a reason that you've never used Pa11y CI? 40% have never heard of it, 30% don't need it; 30% are planning to use it soon](/asset/image/2017-survey/5-not-used.png)

When we asked our respondents to tell us what would make them more likely to use Pa11y CI, they said things like this:

<ul>
	<li><q>If we had better, easier, free CI tools</q></li>
	<li><q>When I have time!!</q></li>
	<li><q>More tutorials please :)</q></li>
	<li><q>If I knew what it was!</q></li>
</ul>

Of the respondents who have used Pa11y CI, they reported finding it easy to set up and to use. Pa11y CI has mostly been used by developers and power users - as with the Pa11y command line tool, this skews the answers to this question towards the easier end of the scale. 

![Bar chart, scale of 1 (easier) to 5 (harder): How easy did you find it to set up Pa11y CI? 50% for 1; 25% for 2 and 3](/asset/image/2017-survey/5-setup.png)
![Bar chart, scale of 1 (easier) to 5 (harder): How easy did you find it to use Pa11y CI? 75% for 1; 25% for 3](/asset/image/2017-survey/5-use.png)

Also in common with the Pa11y command line tool, when we asked what would make Pa11y CI easier to set up and use, tutorials came out as most-wanted. CI is a fairly complex ecosystem, and it oftens helps to be able to see how things fit together end-to-end. 

We asked how easily Pa11y CI fits with our respondents workflows, with mixed results. 

![Bar chart, scale of 1 (easier) to 5 (harder): How easy did you find it to integrate Pa11y CI with your workflow? 50% for 1; 25% for 3 and 4](/asset/image/2017-survey/5-integrate.png)

One respondent who found it more difficult to integrate with their workflow also reported to us that they work as a QA tester. They had a few suggestions that would help make Pa11y CI integrate more easily with their purposes:

<ul>
	<li><q>HTML reporter output</q></li>
	<li><q>errors in specified file </q></li>
	<li><q>acceptance of relative paths in sitemap.xml</q></li>
</ul>

The boundaries between different IT job roles are becoming more blurred, and technology that used to be mostly used by developers is now reaching a much larger audience. In doing so, the technology also needs to be able to meet sometimes radically different use cases. 


## What we plan to improve

### Documentation, tutorials, and alternatives

Since we launched the survey, we've made a number of improvements to the documentation for Pa11y and Pa11y Dashboard. This is an ongoing effort, but we feel that the documentation is in a pretty good place currently. We want to keep on improving that. 

We're always on the lookout for high quality tutorials from users, as the Pa11y user community has shown itself to be excellent at writing them! A well-structured tutorial is often the best way for a new user to get up to speed, and we recognise how useful they are. We're collecting the most comprehensive tutorials we come across, and tweeting and linking out to them so that everyone can benefit.

Not everyone who is interested in accessibility has the kind of skills needed to work with Pa11y. Pa11y Dashboard solves this to an extent, but it still needs to be set up and run on a server, and that's not feasible for everyone. For those users, a great option is [Koa11y](https://open-indy.github.io/Koa11y/), by Pa11y contributor [@thejaredwilcurt](https://github.com/TheJaredWilcurt). Koa11y wraps Pa11y in an installable desktop app. 


### Code changes

Since we launched the survey, we developed the [Actions](https://github.com/pa11y/pa11y#actions) interface, to provide an easier way for people to interact with their pages before running accessibility tests. On release, there was an immediate, dramatic decline in people needing support with interactions. The improvement in quality of life for our users since releasing Actions was so startling that we've decided to retire `beforeScript()` for Pa11y 5. We recognise that this means we'll need to add more Actions over time, and we're actively seeking suggestions. 

In Pa11y 5, we'll be moving from PhantomJS to headless Chrome. The [Pa11y 5.x beta is already available](http://pa11y.org/news/2017/09/pa11y@5.0.0-beta.1/) for you to try out now. 

Pa11y Dashboard will be eventually retired, and replaced with its successor, codenamed [Sidekick](https://github.com/pa11y/sidekick). One of the things we wanted to do with Sidekick was to change the architecture to remove the reliance on Pa11y Webservice. Instead of a web application backed by a separate webservice, Sidekick will be a single package that includes a REST API. We hope this will be much easier for users to work with when integrating with their usual workflow. 


## Conclusions

We didn't encounter any major surprises - our Github issues lists does a good job of showing us what the main preoccupations of our users are. We know that our documentation doesn't always give users what they need, and we're committed to improving that. 

We're pleased to see that most of our respondents like Pa11y and find that it works well for their purposes. Over the next year, we want to make it even better, and we'd love to have you along for the journey 😊 

Thanks so much to everyone who took part in the survey, and a big thanks to all of our users and contributors - you all help make Pa11y what it is. 

