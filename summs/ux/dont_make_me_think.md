# Don't Make Me Think

Written by Steve Krug.

## Guiding Principles

### Don't make me think

>Krug's first law of usability

People don't read, *people scan*, they should be capable of **instantly finding what they need** without wasting time and effort, where it is, how to use it, or even identifying more options. Webs should be *self-explanatory* and speak the user's language.

If we can't make something self-evident, we at least need to make it self-explanatory.

### How we really use the Web

>Scanning, satisficing, and muddling through

Sometimes *people don't use the Web the way we exspect* as designers and developers.

*People are usually in a hurry*. As said before, **they don't read pages, they scan them**. We need (or want) to get something done fast. We try to find the closest option that looks relevant to us, even if it's not the right one.

In reality, most of the time people don't make an optimal choice, **people guess** and choose the most reasonable option. Usually getting wrong, but, when they're right, **it's faster**, surprising and pleasant.

Sometimes *people don't actually know how things work*, **they muddle through**. It's not important for them to ignore things, however, if they know, they'll feel smarter.

### Billboard Design 101

>Designing for scanning, not reading

#### Take advantage of conventions

Standards and **conventions are the safest solutions**  (where the things are, how they work, how they look). Innovate when *you know you have a better idea* that is clear, self-explanatory, and doesn't hurt consistency.

#### Create effective visual hierarchies

Make obvious which things are **more important**, what things **does**, and what things **are part of**. In other words, show visual cues about *hierarchy*, *functionality* and *relationship*.

#### Break pages up into clearly defined areas

Divide the page into clearly defined areas so users can easily **decide which areas to focus** on, and what they can ignore.

#### Make it obvious what's clickable

On the Web, *almost all we can do are clicks*. Use visual cues to **show what's clickable**, color, shape, underlining, location, and more.

#### Eliminate distractions

Reduce visual noise. **Clamoring for attention, disorganization, and clutter is overwhelming**. All of that leads to lots of noise, not much information, and noise obscures the useful stuff.

#### Format content to support scanning

Use **headings** and make them distinctive. **Keep paragraphs short**, avoid creating a "wall of words". Use **bulleted lists** whenever you can. **Highlight key terms** when appropriate.

### Animal, Vegetable, or Mineral?

>Why users like mindless choices

People don't care how many clicks they have to make, but **how much they have to think** to make them. If you know something is difficult, give some help, **guidance should be brief, timely, and unavoidable**.

### Omit needless words

>The art of not writing for the web

By **writing less**, we reduce the noise level, make the useful content more prominent, and save time for the users. Try to avoid *happy talk*, *small talk*, and *instructions* on your products.

## Things You Need to Get Right

### Street signs and Breadcrumbs

>Designing navigation

#### Web Navigation 101

- We're usually trying to find something.
- We decide whether to ask first or browse first.
- If you choose to browse, you use signs as guides.
- Eventually, if you can't find what you're looking for, you'll leave.

#### The unbearable lightness of browsing

We have to give the missing cues for the user, as while searching on the web we have **no sense of scale, direction, and location**.

#### The overlooked purposes of navigation

Navigation:

- Tells us **what's here**.
- Tells us **how to use** the site.
- Gives us **confidence** in the people who built it.

#### Web navigation conventions

Follow standards on **appearance and location of navigation systems**, so people can know *what to look* for and *where to look* when they need.

#### Don't look now, but I think it's following us

**Persistent navigation** (or *global navigation*) should say:

- Navigation is here...
- It will change a little as you navigate...
- But it will always be here...
- And it will always work the same way.

Persistent navigation usually contains the Site ID, Utilities, Sections, and a Search bar.

#### Did I say every page?

We need to **avoid unnecessary distractions while filling forms**, paying on e-commerce, registering, or subscribing. It's fine to simplify the persistent navigation to ensure that people can finish these activities.

#### Now I know we're not in Kansas

Use the **Site ID as a sign** to let the people know where they are. Usually it will be on the **top left corner** of the site, that way it will frame the entire page.

#### The Sections

They are the **primary navigation**, they can show (while clicking or pointing) the subsections or *secondary navigation*.

#### The Utilities

They are even less prominent than the sections. They can **help people use the site**, usually presented as groups of *no more than four elements* (other elements would be on the footer).

Some of the most common utility elements are:

- Sign In.
- Register.
- Your Account.
- Shopping Cart.
- About Us.
- Contact Us.
- Forums.
- Help.
- FAQs.

#### Just click your heels three times and say, "There's no place like home"

Users spect to have access to the Site ID button at any time, so they can **_reset_ and go back to the home page** no matter how lost they are while navigating.

#### A way to search

Stick to the *formula* of **a box and a button labeled as "Search"** (or a magnifying glass icon).

Avoid:

- **Fancy wording**, "Search" is just the standard.
- **Instructions**, usually no one needs them.
- **Options**, give options only after the search, when the user can actually decide if they are needed or not.

#### Secondary, tertiary, and whatever comes after tertiary

After primary and secondary navigation levels, we often **don't give priority for lower levels**.

That happens because:

- The **limited amount of space on the page**.
- The **limited time to design and develop**.
- And most important, the **people already knows how to use the page**, so navigation is *not needed* anymore when they reach these lower levels.

#### Page names, or Why I love to drive in L.A

In L.A.:

- Street signs are big.
- They're in the right place.

Four things about page names:

- **Every page needs a name**: even when it's highlighted in the navigation.
- The name needs to be in **the right place**: it should be framing it's content.
- The name needs to be **prominent**: use position, size, color, and typeface for it.
- The name needs to **match what we clicked**: when it happens it gives comfort and trust.

#### "You are here"

To counteract the "lost in space" feeling on the Web, we need to **highlight the current location** on the navigation bar, list, or menu elements.

We can do this by adding cues like:

- A pointer.
- Bold text.
- Different text color.
- Different background colors.

#### Breadcrumbs

Breadcrumbs allows users to **back up a level or go Home**. They're most useful in **large sites with a deep hierarchy**, self explanatory, and don't take up much room.

Best practices:

- Put them at the top.
- Use ">" between levels.
- Boldface the last item (as "You are here").

#### Three reasons why I still love tabs

Tabs are one of the only few physical metaphors used in UIs, easy to identify and use. Effective when we **bring the active one to the front** and use a distinctive shape and color to make them "pop" on the screen.

They're:

- **Self evident**.
- **Hard to miss** (they perfectly divide the navigation from the content).
- **Slick** (easy to customize and apply).

#### Try the trunk test

No matter where you are on a Web site, or if you have use it before or not, **you should always be able to answer these questions** at a glance:

- What site is this? (Site ID)
- What page am I on? (Page name)
- What are the major sections of this site? (Sections)
- What are my options at this level? (Local navigation)
- Where am I in the scheme of things? ("You are here" indicators)
- How can I search?

### The Big Bang Theory of Web Design

>The importance of getting people off on the right foot

**Designing the Home page** can be complex, here you need to cover all the bases, and, *a few other things*:

- Site identity and mission.
- Site hierarchy (for content and features).
- Search.
- Teases (good staff).
- Content promos.
- Feature promos.
- Timely content.
- Deals (ads., cross-promotion, co-branding).
- Shortcuts (for the most frequently requested content).
- Registration.
- Show me what I'm looking for.
- ...and what I'm not looking for.
- Show me where to start.
- Establish credibility and trust.

#### And you have to do it...blindfolded

About the Home page:

- **Everybody wants a piece of it**, people who make it, and people who use it, may have different points of view or different needs and interests, then the available and the desired content on the Home page may not be the same.
- **Too many cooks**, everyone ends up with a different opinion about it.
- **One size fits all**, the Home page is the only one that has to appeal to everyone.

#### The First Casualty of War

As said, we tend to put a lot of things in the Home page, but we can't. We start filtering and removing things and sometimes we get rid of the most important one, **to make it easy to see the big picture**.

Questions that a Home page has to answer:

- What is this?
- What can I do here?
- What do they have here?
- Why should I be here and not somewhere else?

It's better if we can answer these questions at a glance and with very little effort. **The first few seconds you spend on a new Web site are critical**, (that's the Big Bang Theory of Web Design). **People often form wrong ideas** of what things are and how they work, so they end up creating more misinterpretations.

##### The Top Four Plausible Excuses for not Spelling Out the Big Picture on the Home Page

1. **"We don't need to. It's obvious"**: No, it's not obvious for everybody.
1. **"After people have seen the explanation once, they'll find it annoying"**: No, it will not (and should not) be annoying at all.
1. **"Anybody who really needs our site will know what it is"**: No, even the people who need it, may not "get" it if done wrong.
1. **"That's what our advertising is for"**: No, the TV/radio/Web/print ads will not necessarily be remembered when people get to the site.

#### But...the Home page? Really?

Even knowing that nowadays most of the times **people get on a site from an external link**, the behavior tends to be that: **if they like what they see, they will visit the home page** to see who made it and what more they can find.

#### How to get the message across

There are three things to make it clear **what the site is about**:

- **The tagline**: it's a valuable space next to the Site ID, we read it as a description of the whole site.
- **The welcome blurb**: a terce description of the site.
- **The "Learn more"**: people have become accustomed to watching short explanatory videos, they don't have the patience for a fair amount of explanation.

People will often *get it* without even noticing these three elements. But if they can't guess, there should be a place where they can go to find out.

A few guidelines for **getting the message across**:

- **Use as much space as necessary**: it's the main goal, so make sure you *do it well*.
- **...but don't use any more space than necessary**: if you can, *leave some space* for other things.
- **Don't use a mission statement as a Welcome blurb**: truth is that *nobody cares*.
- **It's one of the most important things to test**: you can't trust your own judgment, just *people from outside* can tell you what's missing.

#### Nothing beats a good tagline!™

A tagline is a pithy phrase that characterizes the whole enterprise, summing up **what it is** and **what makes it great**.

>A good tagline is one that no one else in the world could use except you

- Jakob Nielsen.

Good taglines are:

- Clear and informative.
- Just long enough, but not too long.
- Good at conveying differentiation and clear benefits.
- Not generic.
- Personable, lively, and sometimes clever.

#### Tagline? We don't need no stinking tagline

Some sites don't actually need taglines. When they come from an already achieved **household word status**, or they are well known from their **offline origins**. Even in these cases, sites would benefit from a tagline.

#### The fifth question

Once we know **what we are looking at**, we need to answer **where to start if I want to**:

- Search?
- Browse?
- Sample their best stuff?

If it's a step-by-step process site, it should be obvious, if not, it should be easy to find, for example, the log in or sign In buttons. Unfortunately, the *need to promote everything* can obscure the important stuff. Then we need to make the **entry points visible**. It helps to label them like "Search", "Sign in", "Start here", etc.

#### Why Golden Geese make such tempting targets

One of the worst behaviors is to **try to promote everything**.

Promoting things in the Home page guarantees more traffic to the promoted section. The cost of a promotional overload is an **overall loss in effectiveness** of the Home page as it gets overpopulated.

That's *The Tragedy of the Commons*.

>Any shared resource (a "commons") will inevitably be destroyed by overuse

## Making Sure You Got them Right

### "The Farmer and the Cowman Should Be Friends"

>Why most arguments about usability are a waste of time, and how to avoid them

The team (PMs, designers, marketing, devs, etc) needs to make decisions about usability. Unfortunately they/we end up having an **endless discussion** consisting of *personal beliefs* that cannot be proven, such as a "religious debate".

Instead of solving problems, these *arguments* create **tension** among the team members, and result in a **waste of time**.

#### "Everybody likes ___."

We are not only Web *creators*, are also Web *users*. So we have our own feelings and opinions about it. Often, we tend to think that others like and dislike the same as we do. **We tend to think that most users are like us**.

That happens even when we actually know that *other people* can hate what we like, in fact, some of them belong to our own Web team. Not always *sensible* people, there aren't many of them.

#### Farmers vs. cowmen

On top of that personal passion, we have the **professional passion**. We don't only have our own point of view about each specific element, but about the whole **target** of the project.

I.e., devs tend to like ingenious features, while designers enjoy pleasant visual experiences. And maybe the CEO doesn't care about any of these things and just wants to make something that came out from a dream (true story).

#### The myth of the Average User

While building a Web site, we figure out that not only team members are different from each other, they are different from the Web user, and even more, **each Web user is different** from each other.

Then, thinking that *most* Web users are like *anything* is just a myth. **There is no Average User**.

>All Web users are unique and all Web use is basically idiosyncratic

Each Web user has its own intentions, motivations, knowledge, etc. Their individual reactions are based on **so many variables** that it's almost impossible to describe the Average User. It's even **counter-productive**.

There is no "right" answer to design questions, they just need to be carefully thought out, well executed, and tested. There are some things we should *never* do, and some others that we should *rarely* do, but usually Web teams don't even argue about these ones.

#### The antidote for religious debates

At the end, **there is no point in trying to generalize**, saying what is *good* and what is *bad*. What we really need is a **specific solution** for a specific problem in a specific context.

The only thing that *is good* is the one that works. And the only way to know it is by **testing**. There's no substitute for it.

We have to use our **collective skill**, experience, creativity, and common sense to build "the solution". Watch people as they try and (if possible) finally use it. That's all.

Debates about what *we like* and what *the user (supposedly) likes* are just a waste of time and energy, what really matters is what **works**.

### Usability testing on 10 cents a day

>Keeping testing simple -so you do enough of it

Usability testing has to make part of the project from the **beginning**. Sadly, a lot of it still gets done: too *little*, too *late*, and for *wrong reasons*.

#### Repeat after me: Focus groups are not usability tests

- **Focus group**: a small group of **people talking** about their opinions and experiences about products, and their reaction to new ones. It's for getting a **sampling of users' feelings**.
- **Usability test**: **watching a person try to use** something, to complete tasks. Then detecting and **fixing what confuses or frustrates** them.

The main difference is that in usability, you watch people **use and behave**, instead of listening to opinions and past experiences.

Focus groups are good for determining what your audience wants, needs, and likes (in the abstract). They let you know if your product **makes sense** and your **value proposition is attractive**. They are best used in *planning* stages. They're *not* good for learning about whether your site works and how to improve it. That's what usability testing does, and it should be done through the entire process.

#### Several true things about usability testing

- If you want **a great site**, you've got to **test**: people give different and fresh perspectives on things we take for granted and aren't obvious to everybody.
- **Testing one user** is 100 percent better than testing none: it always produces valuable insights.
- **Testing one user eary** in the project is better than testing 50 near the end: the sooner we do test, the easier it will be to make changes.

#### Do-it-yourself usability testing

As we've already said, usability testing is to watch some people while they try to use a product and note where they run into problems.

At the beginning **it was very expensive**. Recruiting lots of participants, a professional to plan the tests, the resources to execute and analyze it, etc.

In 1989, Jakob Nielsen wrote a paper titled "Usability Engineering at a Discount". He pointed out that **it didn't have to be that expensive** and dropped the costs to about 20% from the amount people were paying until the date (e.g: from $50.000 to $10.000, which is still a lot of money).

That's what this chapter is about, a better approach that is **simpler and less expensive**, the Do-it-yourself usability testing.

||Traditional testing|Do-it-yourself testing
---|---|---
Time spent for each round of testing|1-2 days of tests, then a week to prepare a briefing or report, followed by some process to decide what to fix|One morning a month includes testing, debriefing, and deciding what to fix
When do you test?|When the site is nearly complete|Continually, throughout the development process
Number of rounds of testing|Typically one or two per project|One every month
Number of participants in each round|Eight or more|Three
How do you choose the participants?|Recruit carefully to find people who are like your target audience|Recruit loosely, if necessary. Doing frequent testing is more important than testing "actual" users
Where do you test?|Off-site, in a rented facility with an observation room with a one-way mirror|On-site, with observer in a conference room using screen sharing software to watch
Who watches?|Full days of off-site testing means not many people will observe firsthand|Half day of on-site testing means more people can see the tests "live"
Reporting|Someone takes at least a week to prepare a briefing or write a Big Honkin' Report (25-50 pages)| A 1-2 page email summarizes decisions made during the team's debriefing
Who identifies the problems?|The person running the tests usually analyzes the results and recommends changes|The entire development team and any interested stakeholders meet over the lunch the same day to compare notes and decide what to fix
Primary purpose|Identify as many problems as possible (sometimes hundreds), then categorize them and prioritize them by severity|Identify the most serious problems and commit to fixing them before the next round of testing
Out-of-pocket costs|$5.000 to $10.000 per round if you hire someone to do it|A few hundred dollars or less per round

#### How often should you test?

We should spend **one morning a month** doing usability testing (or every two weeks if doing agile development).

Why a morning a month?

- **It keeps it simple so you'll keep doing it**: less work accumulated leads to lightweight testing.
- **It gives you what you need**: it's enough to keep you busy fixing things for the next month.
- **It frees you from deciding when to test**: it's easy to pick one day of the month and designate it as "the testing day".
- **It makes it more likely that people will attend**: it's a predictable schedule, team members will make some time to come and watch.

#### How many users do you need?

The ideal number is **three**.

It may seem too small to *prove* anything and won't uncover *all of the problems*. But it's not true, and here's why:

- **The purpose of this kind of testing isn't to _prove_ anything**: the process isn't rigorous at all, it's not intended to serve great amounts of quantitative data to be analyzed and used to prove things. It's made to learn about usability problems by literally watching them occur, and immediately act in consequence.
- **We don't need to find all of the problems**: the truth is that you'll never find all of the problems, and even by doing it, the fact is *you can find more problems in half a day than you can fix in a month*.

#### How do you choose the participants?

People often spend a lot of time trying to recruit users who they *think* will precisely reflect their audience. Truth is that testing with these users isn't that important.

For many sites, **you can do testing with almost anybody**. The earlier the tests, the greater the amount of usability flaws that will cause problems. Problems that affect both specific and non-specific users, things that anybody will encounter.

>Recruit loosely and grade on a curve

Recruiting people who fit a narrow profile usually requires more work and money. Try to find users that reflect your target audience, but don't get hung up by it.

Simply ask yourself "Would our users have that problem?"

Using participants that *aren't* from your target audience:

- It's usually not a good idea to design a site so that only your target audience can use it.
- We're all beginners under the skin.
- Experts are rarely insulted by something that is clear enough for beginners.

#### How do you find participants?

There isn't a single way of finding people. Trade shows, Twitter, customer forums, a pop-up on your site, or even asking friends and neighbors.

Typical participants' incentives for a one-hour test session range from $50 to $100 for "average" users, and several hundreds for highly paid professionals. It's *nice* to offer a little more than the going rate.

#### Where do you test?

It's quite obvious. We always need **a quiet space** with no interruptions (an office or a conference room), a table, a couple of chairs, a computer with internet access, and its accessories.

The most "special" item is a **screen sharing** software to allow the team members, stakeholders, and anyone else who's interested. We should also run a **screen recording** software.

#### Who should do the testing?

The person who sits with the participant and leads them through the test is called the **facilitator**. Almost anyone can facilitate a usability test. It tends to be someone who is patient, calm, empathic, and a good listener.

Other than keeping the participants comfortable and focused on doing the tasks, the facilitator's main job is to **encourage them to think out loud** as much as possible.

#### Who should observe?

**As many people as possible!**

One of the most valuable things is the effect that usability testing has on the observers, it's a **transformative experience** that dramatically changes the way they think about users.

We should encourage everyone to come and watch the test sessions. We'll need an observation room with a large screen monitor or projector so everyone can see what's happening.

After each test session, observers need to write down the **three most serious usability problems** they noticed, so they get fixed first.

#### What do you test, and when do you test it?

It's important to start testing **as early as possible** and to keep doing it through the entire process. In fact, it's never *too* early to start.

Even before the design process, it's a good idea to test competitive sites, like sites from competitors or just sites that may have the same style, organization, or features.

If you are redesigning, you'll also want to test, so you'll know what's not working (and needs to be changed) and what is working (so you don't break it).

#### How do you choose the tasks to test?

The tasks (the **things the participants will try to do**) will depend partly on what you have available to test.

If you only have a rough sketch, the task may consist of simply asking what they think it is. If it's more than a sketch, make a list of tasks people need to be able to do.

Choose enough tasks to fill the available time (about **35 minutes** in a one-hour test) keeping in mind that some people will finish faster than you expect. Then word each task carefully, include any information as needed, or allow the participants to choose some of the details (it's much better as it increases the emotional investment).

#### What happens during the test?

For presentation or explanation the wording has to be carefully chosen.

- **Welcome** (4 minutes): We explain how the test works.
- **The questions** (2 minutes): We ask the participants about themselves, that gives you an idea of how computer-savvy and Web-savvy they are.
- **The Home page tour** (3 minutes): We ask the participant to look around the Home page and tell you what they make of it, it gives you an idea of how easy it is to understand it and how much the participant already knows.
- **The tasks** (35 minutes): It's watching the participant try to perform a series of tasks (or just one long task). Making sure they stay focused and keep thinking aloud, if they stop saying what they're thinking, ask things like "What are you thinking?", "What are you looking at?", or "What are you doing now?". It's crucial to let them work on their own, don't give any clues or assistance unless they're hopelessly stuck or extremely frustrated, in case they ask for help just say something like "What would you do if I wasn't here?".
- **Probing** (5 minutes): We ask the participant questions about anything that happened and any question from the observers.
- **Wrapping up** (5 minutes): Finally, we thank them for their help, pay them, and show them the door.

#### Typical problems

Some of the problems you're going to see more often:

- **Users are unclear on the concept**, they just don't get it, or they get it wrong.
- **The words they're looking for aren't there**, you failed to anticipate what they'd be looking for, or you're just using the wrong words.
- **There's too much going on**, sometimes they can't see what they're looking for, in this cases you need to either reduce the overall noise or turn up the volume on the things that need to "pop" out of the visual hierarchy.

#### The debriefing: Deciding what to fix

As soon as possible we must **decide which problems to fix** and what we're going to do to fix them. We should debrief immediately after the tests, so everything is still fresh in our (the observers') minds.

Whenever we test, we're almost always going to find some serious usability problems. Unfortunately, they aren't always fixed. Sometimes people decide to postpone them, or simply choose to fix the easier and shorter ones.

>Focus ruthlessly on fixing the most serious problems first

That maxim can be achieved by:

- **Make a collective list**.
- **Choose ten most serious problems**.
- **Rate them** from 1 to 10 and make it clear what are the worst ones.
- **Create an ordered list**. A rough idea of how we're going to fix each problem for the next month, who's going to do it, and any resources it will require. We don't have to fix it completely, it can be just a tweak to teke that problem out of the "most serious" category.

Tips about deciding what to fix -and what not to:

- **Keep a separate list of low-hanging fruit**: a list of non-serious but *very* easy to fix problems (things that one person can fix in less than an hour).
- **Resist the impulse to add things**: avoid adding explanations or instructions. Very often it's enough to take something (or some *things*) away that are obscuring the meaning of the important things, rather than adding yet another distraction.
- **Take "new feature" requests with a grain of salt**: participants will often say things like "I'd like it better if it could do *x*..." but then, they end saying "... now that I think of it, I probably wouldn't use that". Participants aren't designers, even when they come up with a great idea, it won't be *the* solution to their problem.
- **Ignore "kayak" problems**: sometimes users will go astray momentarily but manage to get back on track immediately without any help. It's kind of like rolling a kayak, as long as the kayak rights itself quickly enough, it's all ok (no harm, no fault). As long as they notice they're no longer headed in the right direction quickly, they manage to recover without help, and it doesn't seem to faze them, we can ignore the problem.

#### Alternative lifestyles

Two other ways to do testing that have distinct advantages:

- **Remote testing**: same as working from home, it expands your recruiting pool from "people near to the office" to "almost anyone", all the participants need a high-speed internet access and a microphone.
- **Unmoderated remote testing**: services like UserTesting.com provide people who will record themselves doing a usability test. We don't get to interact with them, but it's relatively inexpensive and requires almost no effort (especially recruiting) on your part.

#### Try it, you'll like it

Whatever method we use, we're likely to keep doing it.

##### The Top Five Plausible Reasons for not Testing Web Sites

1. **We don't have the time**: It's true that we usually "don't have time" in Web development, but it's also true that by making testing and keeping it as simple as possible, we end up saving time.
1. **We don't have the money**: We don't need to spend $5.000 to $10.000, investing a few hundred dollars per round of testing is enough to get it (at least the most important) done.
1. **We don't have the expertise**: Usability testing is incredibly easy to do. For sure, more experience and knowledge will be better, but even a poorly conducted testing session will produce useful results.
1. **We don't have a usability lab**: We don't need one, all we really need is a room with a desk, a computer, two chairs where you won't be interrupted and another room for the observers with a large screen.
1. **We wouldn't know how to interpret the results**: One of the nicest things is that the most serious problems are hard to miss, they are quite obvious to everyone who's watching.

## Larger Concerns and Outside Influences

### Mobile: It's not just a city in Alabama anymore

>Welcome to the 21th century -you may experience a slight sense of vertigo

Phones have been getting gradually *smarter* for years, even more after the iPhone introduction in June 2007. And it was about this same time that the Mobile Web finally came into its own. There had been Web browsers on phones before, but they *sucked*.

One of Apple's great inventions was the ability to **scroll and zoom** in and out (by just swiping and pinching the screen) very quickly. For the first time, the Web was fun to use on a device that you could carry with you at all times. We could look up anything anywhere anytime.

There's not much denying that mobile devices are the wave of the future, except for things where we need enormous *horsepower* or a big *playing surface* (professional video editing, Photoshop, CAD, etc).

#### What's the difference?

The answer is: **Not much**, the basic principles are still the same.

There are *some* significant differences about mobile that make for challenging new usability problems. But the fact is that Web and app design for mobile devices is still in its formative days in many ways, so it's going to take another few years for things to shake out. Prevailing conventions probably haven't emerged yet.

#### It's all about tradeoffs

Constraints and tradeoffs in design.

>The best you can do is please some of the people some of the time

Constraints actually make design easier rather than limited. They have a **focusing effect**, while liberting and unlimited options can have a *paralyzing* effect.

>Where there are constraints, there are tradeoffs to be made

Many of the serious usability problems are the result of a poor decision about a tradeoff.

#### The tyranny of the itty-bitty living space

The most obvious thing about mobile screens is that they're **small**. Thus, the amount of tradeoffs to make in the Home page is quite big.

One of the only ways to deal with it is to leave things out, the tricky question is: **Which parts do we leave out?**

One approach was **Mobile First**. Where we define the most important features and contents, then we use them for the design, and finally we add on more things to create the desktop/full version. Mobile First forces us to work hard to determine what's *really essential*, what people need more (as it should always be).

Often it happens that we tend to design for mobile as the users were "on the move". That's wrong, users are just as likely to be using their mobile device while sitting at home, and they want (and expect) to be able to do the same things they do on desktop.

The main idea is not to remove features or content, it's to **prioritize** them.

At the end, it results in a navigation with a few more "taps" than the full version, and that's OK. As long as the user continues to feel confident that what they want is further down the screen or behind a link or button, they'll keep going.

>Managing real estate challenges shouldn't be done at the cost of usability

#### Breeding chameleons

The one-size-fits-all-sizes promise broke since mobile development is a thing.

Facts about **scalable design** (aka. dynamic layout, fluid design, adaptive design, responsive design):

- It tends to be a lot of work.
- It's very hard to do it well.
- it's a must have for almost any Web site nowadays.

Scalable design doubles the effort and guarantees that either things *won't be updated* or the versions *will be out of sync*. It has real revenue implications.

Three suggestions to "solve" that problems:

- **Allow zooming**: If we don't have the resources to "mobilize" the site and we're not using responsive design, we should make sure that users can zoom in on the tiny text.
- **Don't leave me standing at the front door**: If we want to enter a site on a specific article from a mobile device, but the server returns the mobile Home page, it's a real nuisance.
- **Always provide a link to the "full" Web site**: No matter how complete our mobile site is, we do need to give the option of viewing the non-mobile version. Especially if it has exclusive features. (The convention is to put that option/toggle at the bottom of the page.)

#### Don't hide your affordances under a bushel

Even in the *need* of removing and hiding things, avoid hiding affordances (signifiers/visual clues) of elements on visual user interfaces.

By definition, they are the *last* thing we should hide.

They need to be **noticeable**, and some characteristics of mobile devices have made them less noticeable, or worse, invisible. Affordances don't need to hit you in the face, they just have to be visible enough.

#### No cursor = no hover = no clue

When designing for mobile, we cannot rely on the *hover* feature as it doesn't actually exist. We do need to find ways to replace the cues or entire features that depend on that behavior.

#### Flat design: Friend or foe?

To make affordances effective they need to be **distinctive**. Flat design, if done wrong, removes all the visual information for the sake of looking "good". It makes it harder to differentiate things.

#### You actually can be too rich or too thin

Internet connection is quite fast nowadays. Anyways, people leave the fast wi-fi and revert to a slow 4G/3G so often that download speeds are unreliable. We shouldn't force the user to download a huge amount of code and images larger than needed on mobile screens.

#### Mobile apps, usability attributes of

Krug's definition of usability:

A person of average ability and experience can figure out how to use the thing \[*learnable*\] to accomplish something \[*effective*\] without it being more trouble than it's worth \[*efficient*\].

Three important concepts are **delight**, **learnability**, and **memorability** (next three sections are about these applied on mobile apps).

#### Delightful is the new black

In general it's hard to define *delightful*, but people describe it as something **fun**, **surprising**, **impressive**, **clever**, and even **magical**. It happens when people figure out that they can do something that they don't imagine is possible, it's something that people really enjoy being able to do.

#### Apps need to be learnable

One of the biggest problems comes when we add **too many features**, new ones and the ones that don't follow any convention and need to be explained. It makes the app **too complicated** and not easy to learn.

Even an innovative app can be depreciated by users if its demo/training/tutorial is done wrong. No matter how much creativity we bring on the table, users need to figure out how the thing works.

#### Apps need to be memorable, too

Once the users have figured out how to use an app, they should be able to **remember** or **relearn** it again with no much effort. To ensure that, we have to make things incredibly clear and easy. If it's easy the first time, it'll be easy the second time.

#### Usability testing on mobile devices

It's **quite the same** as the testing on non-mobile devices. The only thing that can change is the logistics.

#### The logistics of mobile testing

As mentioned before, when testing on a personal computer:

- The facilitator looks at the same screen as the participant.
- Screen sharing software allows the observers to see what's happening.
- Screen recording software creates a video of the session.

Setup isn't the same for mobile devices, we cannot rely on the same tools, some of them don't even exist yet.

- Do you need to let the participants use their own devices?
- Do they need to hold the device naturally, or can it be sitting on a table or propped up on a stand?
- What do the observers need to see (e.g., just the screen, or both the screen and the participant's fingers so they can see their gestures)? And how do you display it in the observation room?
- How do you create a recording?

#### My recommendations

Until better technology comes along:

- **Use a camera pointed at the screen instead of mirroring**: the idea is to watch not only the screen but also the gestures of the participant, it's much more engaging and rich in information.
- **Attach the camera to the device so the user can hold it naturally**: this way we ensure that the participant can not only hold the device, but also move it while keeping it in view and focused all the time, without having to worry about a fixed area.
- **Don't bother with a camera pointed at the participant**: it's more a distraction than something useful. Enough information comes from what the participant is saying and the tone of voice.

#### Proof of concept: My Brundleyfly camera

Brundlefly is the name I give to a hand-crafted solution that consists of a lightweight webcam and a clip from a book light, so we don't need to use a heavy camera attached to the device.

The traditional way with mounted cameras:

- They're heavy and awkward.
- They're distracting.
- Nobody wants to attach anything to their device.

The rest of the setup:

- Connect the brundlefly camera to the facilitator's laptop via USB.
- Use some software to display the view from the brundlefly camera.
- Share the laptop screen with the observers with a screen sharing software.
- Run a screen recorder on the computer in the observation room (to reduce the burden on the facilitator's laptop).

### Usability as common courtesy

>Why your Web site should be a mensch*

**Mensch: a German-derived word, a person with integrity and honor, someone who does the right thing.*

Besides being just *clear*, the site should **behave like a mensch** -being considerate of the user, bringing the content and utility the people need and isn't that obvious.

#### The reservoir of goodwill

It's useful to imagine that every time we enter a Web site, we start out with a reservoir of goodwill. Each problem we encounter on the site lowers the level.

The **reservoir is limited**, and if we treat users badly enough and exhaust it there's a good chance that they'll leave. It can get even worse, they may not be as eager to use your site in the future and savage you on Facebook or Twitter. Thinking in marketing, the NPS (Net Promoter Score) will go down.

A few things worth noting about this reservoir:

- **It's idiosyncratic**: some people have a large reservoir, some small, some people are more suspicious, some more patient.
- **It's situational**: people may have their reservoir already affected by a previous experience.
- **We can refill it**: we can fix our mistakes by making the people know that we're looking out for their best interests.
- **Sometimes a single mistake can empty it**: people don't need a large amount of reasons to empty their reservoir.

#### Things that diminish goodwill

- **Hiding information that should be visible**: sometimes it's useful to hide some information for *convenience*, to avoid a negative psychological impact, to save money, to reserve space in the UI, among other reasons. Truth is that this kind of tactic is annoying for the user and can even be worse than just keeping the information visible.
- **Punishing for not doing things the expected way**: things like forcing the user to format data, while it can be done by code, tends to be a negative experience.
- **Asking for information that's not really needed**: if a task can be done by only requesting A, don't ask for A, B, and C.
- **Shucking and jiving**: sincerity is important, we should never offer things or make promises that we will not keep.
- **Putting sizzle in the way**: if we really care about the people's needs and time, we shouldn't put any distractions between them and the service/product.
- **A site that looks amateurish**: people can lose goodwill if the site looks disorganized, sloppy, or unprofessional, it's like no effort has gone into making it presentable.

#### Things that increase goodwill

Most of these items are just the flip side of the previous list:

- **Know the main things that people want to do on the site and make it obvious and easy**: keep it clear what the users want to do.
- **Tell the people what they want to know**: be upfront about what will be required.
- **Save steps wherever we can**: for the people, it's important when we save them a few clicks or minutes for a given task.
- **Put effort into it**: people will notice it and, in some way, reward it when we put effort into our job.
- **Know what questions people are likely to have, and answer them**: Frequently Asked Questions are valuable when:
  - They are really FAQs, not QWWPWAs (Questions We Wish People Would Ask).
  - They are up to date.
- **Provide people with creature comforts like printer-friendly pages**: while serving printer-friendly material, we should drop any ads banner, but keep images, illustrations, photos, and figures.
- **Make it easy to recover from errors**: for sure, errors should be prevented by doing user testing, anyway, we should provide a graceful, obvious way for people to recover.
- **When in doubt, apologize**: sometimes we can't help. If we can't do what users want us to do, we at least have to let them know that we know we're inconveniencing them.

### Accessibility and you

>Just when you think you're done, a cat floats by with buttered toast strapped to its back

Unless we're going to make a blanket decision that people with disabilities aren't part of our audience, **we must make sure the site is accessible** to really make it usable.

#### What developers and designers hear

Reasons why they need to make their sites accessible:

- **Everyone should have the same opportunities**.
- Most accessibility adaptations **benefit everyone**.
- It's a **huge potential market** (~65% of the population).
- It's **required by law**.

In the end, doing an accessible site **is the right thing to do** because it makes some people's lives extraordinarily better.

#### What developers and designers fear

As they learn more about accessibility, two fears tend to emerge:

- **More work**: especially for developers, it means that they have to put one more thing into an already complicated system and a tight deadline, ending in more time-consuming reports, reviews, meetings and tests.
- **Compromised design**: especially for designers, because it seems like a good design for people with disabilities and a good design for everyone else who have opposite directions.

#### The truth is, it can be complicated

Sometimes it seems like we can get the job done by just using a validator to make sure the site complies with the WCAG guidelines, but **it's not that easy**. It does cover some of the problems, but not all of them. It gives us vague warnings about things that *may* be wrong, and a long list of things that can be improved but we don't actually need.

This can be very discouraging for developers and designers that are not going to become accessibility experts and figure out that it's much harder than they thought.

At the end:

- Screen readers and adaptive technologies have to **get smarter**.
- Tools to code and make accessible sites have to **make it easier**.
- Design processes need to include accessibility **from the beginning**.

#### The four things you can do right now

Even with current technology and standards, **it's possible** to make any site accessible without an awful lot of effort by focusing on a few things that will have the most impact.

#### #1. Fix the usability problems that confuse everyone

**If something confuses most people who use the site, it's almost certain to confuse users who have accessibility issues** (or even to confuse them harder). The single best thing we can do to improve our site's accessibility is to test it often.

#### #2. Read an article

There are a lot of articles from people who had time and motivation to do tests with users that have some accessibility issues. As usual, **they produced invaluable insights**.

#### #3. Read a book

Some recommendations:

- **A Web for Everyone: Designing Accessible User Experiences** by Sarah Horton and Whitney Quesenbery.
- **Web Accessibility: Web Standards and Regulatory Compliance** by Jim Thatcher.

#### #4. Go for the low-hanging fruit

The most important things to do, implementing specific changes in our pages:

- **Add appropriate alt text to every image**. Leave it empty or "null" for images that should be ignored, then add a helpful and descriptive text for the rest.
- **Use headings correctly**. They give logical organization for the screen readers.
- **Make forms work with screen readers**. The correct use of "label"s is important.
- **Put a "Skip to Main Content" link at the beginning of each page**. This can save a lot of time specially for blind people that should be listening to all, or almost all the content before continuing to the *important* part.
- **Make all content accessible by keyboard**. Not everyone can use a mouse.
- **Create significant contrast between text and background**. Readability is key for everyone.
- **Use an accessible template**. If we use a premade template, we should make sure it was made with accessibility in mind.

### Guide for the perplexed

>Making usability happen where you live

What can you do if you find yourself in an environment where your desire to "do usability" isn't supported?

#### Ya gotta know the territory

In the 1990s The terms used to describe *this* were **Usability** and **User Centered Design** (UCD). And there were essentially two "professions", **Usability** (making sure things are designed in a way that enables people to use them successfully) and **Information Architecture** (making sure the content is organized in a way that allows people to find what they need).

Now the term we hear most often is **User Experience Design** or just **User Experience** (UXD, UX), and there are a lot of specialties involved, like *Interaction Design*, *Interface Design*, *Visual Design*, *Content Design*, *Content Management*, *Usability*, *Information Architecture*, and more.

One difference between UCD and UX is that:

- UCD is focused on *making a product usable*.
- UX takes the *users' needs into account at every stage* of the product life cycle.

#### The usual advice

Here are the two suggestions for convincing management to support usability work:

- **Demonstrate ROI**: we gather and analyze data to prove that a change resulted in *cost savings* and/or *additional revenue*.
- **Speak their language**: instead of talking about the benefits for users, describe the *solution for the current vexing corporate problems*.

#### If I were you...

Some *tried and tested* ways to make it work based on successful experiences:

- **Get your boss (and her boss) to watch a usability test**: *executives often become fascinated* and they stay longer than they'd planned, because it's the first time they've seen abyone try to use the company's site and it's often not nearly as pretty a picture as they'd imagined.
- **Do the first one on your own time**: we should do the first test without asking for permission, we just need to *keep it incredibly simple* by finding some volunteers, so it doesn't cost anything, and making sure something improves as a result, usually a well known serious problem.
- **Do a test of the competition**: everybody loves *learning about the competition*, and because it's not our site, *no one will be hurt* about the bad things we find on it.
- **Empathize with management**: virtually, *empathy is a proffessional requirement*.
- **Know you place in the grand scheme of things**: humility goes a long way, our primary role is *to share what we know*, not to tell people how things should be done.

At the end, it's all about sharing what we know, not to tell people how things should be done.

#### Resist the dark forces

Usability is about **serving people better** by building better products, but there's a trend, mainly from the marketing team, to try to get usability practitioners to help them figure out how to **manipulate users** rather than serve their needs.

There's even a book called *Evil by Design: Interaction Design to Lead Us into Temptation* by Chris Nodder about human frailties and design decisions.

Whether something is desirable or not is a marketing question, best answered by using market research tools and instruments.

It's fine to use usability tests to *determine* whether something is desirable, or even for help in figuring out how to make something *more* desirable. What's wrong is to use usability to make users *think* something is desirable, to manipulate them.

Books that can lead us to influence people *the right way*:

- *Influence: The Psychology of Persuasion* by Robert Cialdini.
- *How to Get People to Do Stuff: Master the art and science of persuasion and motivation* by Susan Weinschenk.

#### A few definitive answers

Almost all in this book has been answered with "it depends", but there is a collection of things that are definitive answers:

- **Don't use small, low-contrast type**.
- **Don't put labels inside form fields** (as content).
- **Preserve a distinction between visited and unvisited links**.
- **Don't float headings between paragraphs**.
