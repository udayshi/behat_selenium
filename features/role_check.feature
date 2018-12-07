Feature: Checking Role on Bad Database

  Scenario: Checking Super Admin giving superadmin role
    Given I am on "/"
    Then wait "3"
    When I fill in "userName" with "email@email.com"
    Then wait "1"
    When I fill in "password" with "*******"
    Then wait "1"
    Then I press "loginButton"
    Then wait "3"
    Then I should see text matching "Structure"
    When I go to "/user/1/ROLE_ADMIN"
    Then wait "2"
    When I go to "/logout"
    Then wait "2"

  Scenario: Checking  Admin giving admin role
    Given I am on "/"
    Then wait "3"
    Then I should not see text matching "Structure"
    Then I should see text matching "User"
    When I go to "/user/1/ROLE_VIEW"
    Then wait "2"
    When I go to "/logout"
    Then wait "2"

  Scenario: Checking  User giving user role
    Given I am on "/"
    Then wait "3"
    Then I should not see text matching "Structure"
    Then I should not see text matching "User"
    Then I should see text matching "Reports"
    When I go to "/user/1/ROLE_SUPER_ADMIN"
    Then wait "2"
    When I go to "/logout"
    Then wait "2"








#    When I go to "/raw/process_excel"
#    Then wait "3"
#    When I attach the file "/Users/uday.shiwakoti/Desktop/IT Dashboard/COMPLIANCE.zip" to "data_src"
#    Then I press "Process"
#    Then wait "6"




