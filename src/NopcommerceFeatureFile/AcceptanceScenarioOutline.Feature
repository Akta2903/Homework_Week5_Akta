Feature: Bookcategory

  Background:       I should be able to see homepage
    Given           I enter URL"http://demo.nopcommerce.com" in browser
    And             I am on home page

  Scenario Outline: I should be able to see top menu tabs on homepage with categories
    When            I am on home page
    Then            I should be able to see top menu tabs with"<Categories>"

    Examples:
      |Categories           |
      |Computer             |
      |Electronics          |
      |Apparel              |
      |Digital downloads    |
      |Book                 |
      |Jewellery            |
      |Gift Card            |

  Scenario Outline: I should be able to see Book page with filters
    When            I select Book category from top menu tabs on homepage
    Then            I should be navigated to book category
    And             I should be able to see "<Filters>"

    Examples:
      | Filters             |
      | Short by            |
      | Display             |
      | The Grid            |
      | List tab            |

  Scenario Outline:  I should be able to see list of terms of each filter
    Given            I am on Book page
    When             I click on "<Filter>"
    Then             I should be able to see "<list>" in dropdown

    Examples:
      |Filter     |list                                                                       |
      |Sort by    |Name: A to Z,Name: Z to A,Price: Low to High,Price: High to Low,Created on |
      |Display    |3,6,9                                                                      |

  Scenario Outline: I should be able to choose any filter option with specific result
     Given          I am on Book page
     When           I click on "<Filter>"
     And            I click on any "<Option>"
     Then           I should be able to choose any filter option from the list
     And            I should be able to see "<Result>"

    Examples:
        |Filter      |Option                             |Result                                                              |
        |Sort by     |Name: A to Z                       |Sorted product with the product name in alphabetical order A to Z   |
        |Sort by     |Name: Z to A                       |Sorted product with the product name in alphabetical order Z to A   |
        |Sort by     |Price: Low to High                 |sorted product with price in descending order                       |
        |Sort by     |Price: High to Low                 |sorted product with price in Ascending  order                       |
        |Sort by     |Created on                         |Recently added product should be show first                         |
        |Display     |3                                  |3 products in a page                                                |
        |Display     |6                                  |6 products in a page                                                |
        |Display     |9                                  |9 products in a page                                                |

  Scenario Outline: I should be able to see product display format according display format type as per given picture in SRS document
     Given          I am on Book page
     When           I click on "<Display format icon>"
     Then           I should be able to see product display format acording display format type as per given picture in SRS document

    Examples:
       |Display format icon |
       |Grid                |
       |List                |

