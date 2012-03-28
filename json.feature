Feature: check json
  In order to check a json
  As a programmer
  I want to test json values

 
  Scenario: check perons
    Given a json named "person" with 
        """
            {
                name:2,
                surname:"rossi"

            }
        """
    When i read this json
    Then the value of "name" should be 2
    And Then the value of "name" should be 2
  