# Testing

From the books:

- The Art of Software Testing.
- Perfect Software and Other Illusions About Testing.
- Software Testing - An ISTQB Certified Tester Foundation Guide.

On September 9th, 1947, *Grace Hopper found the first computer bug in history*. It was a mouth stuck between relays of the Harvard Mark II computer, she documented this finding in her log book.

Software systems are part of our everyday life, used almost everywhere in almost every sector (e.g.: financial, government, transport, medicine, entertainment, etc). Even though they are getting more and more common to achieve even the simplest tasks, we have all experienced software systems failing. That's why *testing is necessary*.

>The only truly secure system is one that is powered off, cast in a block of concrete and sealed in a lead-lined room with armed guards. And even then I have my doubts. -Gene Spafford

<!-- https://www.bugsnag.com/blog/bug-day-2017 -->

## Common Terms

From the ISTQB Standard Glossary of Terms.

- **Testing** is the process concerned with planning, preparation, execution, and evaluation with the objective of *finding defects* in our software products.
- **Error**, a *human can make an error* (aka mistake). An error is a human action that produces an incorrect result.
- **Defect**, an *error can cause a defect* (aka fault or *bug*). A defect is a flaw in a component or system that can lead it to fail to perform its required function. It can be at a software, system, or documentation level. Defects occur simply because human beings are fallible, we can often find ourselves dealing with time pressure, complex code, complex infraestructures, changed technologies, among others.
- **Failure**, a *defect may result in a failure*. It's a deviation of the component or system from its expected delivery, service, or result. Failures can be caused by environmental conditions such as radiation, magnetism, electronic fields, and any kind of pollution. These conditions may change hardware behavior, then influence the execution of software.
- **Quality** is the degree to which a system *meets specified requirements*, needs, and expectations.
- **Risk**, a factor that could result in future *negative consequences*.
- **Exit criteria**, the *set of conditions* for permitting a process to be officially completed. These conditions are often agreed with the stakeholders. Exit criteria may be defined based on cost or time constraints, number of defects remaining (to be fixed), percentage of tests run without incident, among others.

## The Role of Testing

>Testing is a measurement of software quality. -Bill Hetzel, 1988

Testing is used to **find defects** (so they can be fixed) before the system is released. By doing so, we *reduce the risk* of problems occurring in an operational environment and *contribute to the quality* of the software system. Testing may also be required to meet contractual or legal requirements, as well as industry-specific standards.

>Testing is any activity aimed at evaluating an attribute or capability of a program or system and determining that it meets its required results. -Bill Hetzel

Testing can help us *measure the quality* of the system, quality can be measured in terms of defects found. The higher the amount of defects, the closer we are to the highest quality  product. Defects can be functional or non-functional (e.g.: reliability, usability, efficiency, portability, and maintainability).

>Quality is not intangible. The purpose of testing is to make quality visible. Testing is the measurement of software quality! -Bill Hetzel

In some cases the main objective of testing may be to assess the quality of the software (with no intention of fixing defects), to give information to stakeholders of the risk of releasing the system at a given time. The *decision of releasing* (or not) should be taken by the whole team, it's not (only) the testers' responsibility.

## Enough is Enough

To decide *how much testing is enough*, we should take into account:

- The **level of risk**.
- The **time and budget constraints**.

Risks should be evaluated at the business, technological, project, and testing level. They are also used to determine where to start testing and where more testing is needed. The risk considerations can include financial implications, legal actions, delivery delays, potential loss of reputation, potential loss of life, among others.

>Test estimation is hard to do perfectly, but not that hard to do well. -Black, 2002

## Debugging and Testing

As said before, testing aims to find and report a defect. While debugging, on the other hand, is used to **find and fix an error**, the cause of a defect. After a correction is made, some check should be done to verify the defect was fixed. New tests are run to ensure that new defects were not introduced among the corrections.

Debugging is a two-step process that developers go through after a test successfully reported a defect. First, we need to *identify the error* that causes the defect in the code by isolating and locating it. Second, we *fix the error*.

In short:

- *Testers test* to ensure the system meets its requirements.
- *Developers debug* to fix (met but) broken requirements.

## General Principles of Testing

### Testing Shows Presence of Defects

>Testing may convincingly demonstrate the presence of bugs, but can never demonstrate their absence. -Edsger W. Dijkstra, Computing Pioneer

By testing, the only thing we can actually prove is that there are defects. What we cannot do at all is to prove that there are *no* defects.

>(1) The probability of the existence of more errors (defects) in a section of a program is proportional to the number of errors (defects) already found in that program. (2) Do not plan a test effort under the tacit assumption that no errors (defects) will be found (3) A good test is one that has high probability of detecting an as-yet undiscovered error (defect). (4) A successful test is one that detects an as-yet undiscovered error (defect). -Myers 2004

### Exhaustive Testing is Impossible

For most cases we cannot test everything, it would be almost impossible because of the complexity or the time it would take, we need to *prioritize* using a risk-based approach to define what actually needs to be tested.

### Early Testing

Testing activities should start *as early as possible* in the development/design cycle. As later in the process we test, the more expensive it will be to correct the defects.

### Defect Clustering

Defects are not evenly spread in a system, they are usually *confined* to a small number of modules. It's said they are clustered. Similarly to defects, failures also tend to be close to each other.

### Pesticide Paradox

As programmers fix defects, and the quality of the software improves, the effectiveness of the *previous tests erodes*. We must create new tests as old ones become useless, by doing so, more defects can be found in the future.

>It's called the "pesticide paradox" after the agricultural phenomenon, where bugs were able to build tolerance to pesticides, leaving us with the choice of; ever-more powerful pesticides followed by ever-more powerful bugs; or an altogether different approach. -Beizer, 1995

### Testing is Context Dependent

Testing is done differently in different projects. *Severity and standards* may vary from context to context, so investment on testing should adapt to the given conditions (e.g.: compare a software to share media, with one to save lives). Usually testing can be about 50% of the development costs but, as said before, it may vary.

Examples of permitted failures per KLOC:

- 3 to 10 for commercial software.
- 1 to 3 for industrial software.
- 0.01 for NASA shuttle code.

### Absence-of-Error Fallacy

>Have no fear of perfection, you will never reach it. -Salvador Dali

The fact of making improvements in the system by fixing bugs, doesn't really mean there are no more bugs. The system *may still* be unusable or at least not good enough to meet the requirements.

>In any form of testing it is impossible to achieve total confidence. The only exhaustive testing there is, is so much testing, that the tester is exhausted. -Bill Hetzel

## Hall of Fame

Sometimes a bug can make us waste a couple of minutes, but sometimes it can lead a system to do exactly the *worst* thing we can (or actually cannot) imagine, such as losing a huge amount of time, millions of dollars, or even human lifes.

### Ariane 5

Ariane 5, 1996, a rocket that *lost its guidance and exploded* about 40 seconds after launch, resulting in a loss of +$370 million. The code from Ariane 4 was reused while the hardware was partially different, causing an integer overflow while converting data.

<!-- https://www.bugsnag.com/blog/bug-day-ariane-5-disaster -->

### Mars Climate Orbiter

NASA launched the Mars Climate Orbiter in 1998, but in 1999, communication was permanently lost. It went too close to the planet, and it was either destroyed in the atmosphere of Mars or entered an orbit around the Sun. The bug was a *measurement mismatch between two different systems*, one of them used metric units, while the other imperial units (they didn't know that). The cost of the mission was +$320 million.

<!-- https://www.bugsnag.com/blog/bug-day-mars-climate-orbiter -->

### Knight Capital

In 2012, Knight Capital deployed an update to the production servers. Due to the use of an old and incorrectly configured system, the servers automatically *executed 4 million wrong trades in 40 minutes*. They were wrong because the order was to: buy a stock at its "ask" (high) price and immediately sell it at the "bid" (low) price, which is exactly the opposite of how stock exchange works. They lost +$460 million.

<!-- https://www.bugsnag.com/blog/bug-day-460m-loss -->

### Therac-25

Therac-25 was a radiation therapy machine built in 1985, it was designed to use software-based safety systems rather than (the standard) hardware controls. That had tragic consequences. The immaturity and poor quality of the software led the machine to apply *deathly radiation doses*, killing three people and causing injuries to at least three others.

<!-- https://www.bugsnag.com/blog/bug-day-race-condition-therac-25 -->

### General Electric Energy - Blackout of 2003

The blackout of 2003 (US and Canada) affected around 50 million people for 2 hours up to 4 days. The event contributed to at least 11 deaths (and possibly ~100). Economical effects are unmeasurable, but estimations say it reduced the US earnings by +$6.4 billion. It all happened due to a bug from the General Electric Energy's software that *stalled the alarm system* of FirstEnergy, making operators unaware of a downed power line, causing other ones to overload and overheat in cascade.

<!-- https://en.wikipedia.org/wiki/Northeast_blackout_of_2003 -->

### Early Release of Prisoners

Department of Corrections of Michigan, between 2003 and 2005, a bug in the software that calculates the release dates resulted in the *early release of 23 inmates*, from 39 to 161 days earlier, some others had the period prolonged.

<!-- https://www.theregister.com/2005/10/24/michigan_jail_pc_snafu/ -->
<!-- https://www.computerworld.com/article/2559063/computer-glitch-gives-seven-mich--prisoners-early-release.html -->

### American Airlines - Grounded Flights

In 2013, the airline American Airlines was *forced to ground flights* for several hours due to a bug in the program that accesses the booking system. More than 500 flights were canceled and many more were delayed.

<!-- https://www.nytimes.com/2013/04/17/business/american-airlines-cancels-flights-after-outage.html -->
<!-- https://www.elmundo.es/america/2013/04/16/estados_unidos/1366141051.html -->

### United Airlines - (Almost) Free Tickets

United Airlines, in 2013, *sold tickets for $0* because of a bug on a website's booking system. The passengers only asked to pay for US security fees which cost about 5 to $10, instead of the whole ticket price that could cost as much as $800.

<!-- https://www.bbc.com/news/world-us-canada-24089326 -->

### Patriot Failed to Defend

The MIM-104 Patriot missile battery used in the Persian Gulf War in 1991, successfully detected, but *miscalculated the position of an enemy missile* due to a bug in the software that converts tenths of seconds to seconds. A small defect (0.000000095 seconds per iteration), but repeated for more than 100 hours. It led to the system to miss for almost 600 meters, "thinking" the missile wasn't a threat, then letting it hit the US Army's barracks, killing 28 soldiers and causing injuries to about 100 people.
