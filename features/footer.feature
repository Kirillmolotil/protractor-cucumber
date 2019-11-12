@footer
Feature: Footer

    Background:
        Given I Disable protractor synchronization
        When I should be on "Home" page

    @smoke
    @ticket_04
    Scenario: Verify that user is able to see all necessary elements at the Footer on Home Page
        Then I scroll to the "HomePage > Footer > Solutions" element
        And Element "HomePage > Footer > Solutions" should be visible
          And Element "HomePage > Footer > OurWork" should be visible
          And Element "HomePage > Footer > About" should be visible
          And Element "HomePage > Footer > News" should be visible
        When I sleep 5 seconds
        Then News Items list "HomePage > Footer > NewsItems" contains values:
            |Breaking News  |
            |Press Releases |
            |Events         |
            |Blog           |

    @smoke
    @ticket_05
    Scenario Outline: Verify that user is able to see all items in all tables on the Footer
        Then I scroll to the "HomePage > Footer > <Footer Tables>" element
        Then Collection "HomePage > Footer > <Footer Dropdown Items>" should be visible
          And Count of "HomePage > Footer > <Footer Dropdown Items>" elements should be equal "<Number of Items>"
        
        Examples:
            | Footer Dropdown Items    | Number of Items    | Footer Tables      |
            | SolutionsItems           | 9                  | Solutions          |
            | OurWorkItems             | 6                  | OurWork            |
            | AboutItems               | 4                  | About              |
            | NewsItems                | 3                  | News               | 