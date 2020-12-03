﻿Feature: MMS_DealMilestones
	Login to MMS Portal
	Create MMS Deal
	Assign Broker to Deal
	Verify MMS Deal milestones Deal received, Solicitor instructed, Broker conditions met, Funded

Scenario: MMS deal milestones on broker portal
	Given I go to MMS FCT Portal
	Then I login to MMS Portal
	And I create new deal on MMS Portal
	And I get MMS FCT Urn
	Then I search and view MMS deal
	Then I assign MMS deal to broker
	Then I add property address on MMS Portal
	Then I verify RFI received date is populated on MMS Portal
	Then I close MMS FCT portal
	Given I go to Broker Portal on Android Emulator Browser
	Then I login to Broker Portal on Android Emulator Browser
	And I select Solicitor closed deals tab
	Then I search MMS deal without broker alert on broker portal
	And I verify deal milestones for MMS on broker portal
	And I verify Deal received milestone status completed for MMS on broker portal
	Given I go to MMS FCT Portal
	Then I login to MMS Portal
	Then I search and view MMS deal
	Then I upload solicitor instruction package on MMS Portal
	Then I verify Solicitors instruction sent date is populated on MMS Portal
	Then I close MMS FCT portal
	Then I navigate back on android
	Then I search MMS deal without broker alert on broker portal
	And I verify Solicitor instructed milestone status completed for MMS on broker portal
	Given I go to MMS FCT Portal
	Then I login to MMS Portal
	Then I search and view MMS deal
	And I check Broker Conditions Satisfied milestone on MMS Portal
	And I verify Broker Conditions Satisfied completed date is populated on MMS Portal
	Then I close MMS FCT portal
	Then I navigate back on android
	Then I search MMS deal without broker alert on broker portal
	And I verify Broker conditions met milestone status completed for MMS on broker portal
	Given I go to MMS FCT Portal
	Then I login to MMS Portal
	Then I search and view MMS deal
	And I uncheck Broker Conditions Satisfied milestone on MMS Portal
	And I verify Broker Conditions Satisfied completed date is removed on MMS Portal
	Then I close MMS FCT portal
	Then I navigate back on android
	Then I search MMS deal without broker alert on broker portal
	And I verify Broker conditions met milestone status is unset for MMS on broker portal
	And I logout from Broker Portal on Android Emulator Browser