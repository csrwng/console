Feature: Filters on Serving and Eventing page
              As a user, I should be able to use filters as per the use


        Background:
            Given user is at administrator perspective
              And user has created or selected namespace "aut-serving-eventing"


        Scenario: Search by name correctly
            Given user is at Serving page
              And user has created knative service "hello-openshift"
              And user has selected Services tab
             When user clicks on dropdown button
              And user selects Name
              And user enters "hello-openshift"
             Then user will see KSVC by name "hello-openshift"
              And user will see Clear all filters


        Scenario: Search by label correctly
            Given user is at Serving page
              And user has created knative service "hello-openshift"
              And user has selected Routes tab
             When user clicks on dropdown button
              And user selects Label
              And user enters "hello-openshift"
             Then user will see routes for KSVC by name "hello-openshift"
              And user will see Clear all filters


        Scenario: Search by name incorrectly
            Given user is at Serving page
              And user has created knative service "hello-openshift"
              And user has selected Revisions tab
             When user clicks on dropdown button
              And user selects Name
              And user enters "xyz"
             Then user will see message "No Revisions found"
              And user will see Clear all filters


        Scenario: Filter the Event Sources
            Given user has created knative service "hello-openshift"
              And user has created ApiServer Source
              And user has created Ping Source
              And user has created Sink Binding
              And user has created Container Source
              And user is at Event Sources tab
             When user clicks on Filter dropdown
             Then user will see digit "1" in front of ApiServer, Ping, Sink, Container Sources checkboxes
              And user will see only ApiServer source as checked
              And user will see only Container source as checked
              And user will see only Ping source as checked
              And user will see only Sink source as checked


        Scenario: Filter the Channels
            Given user has created knative service "hello-openshift"
              And user has created Default Channel
              And user has created In Memory Channel
              And user is at Channels tab
             When user clicks on Filter dropdown
             Then user will see digit "1" in front of Channel and In Memory Channel checkboxes
              And user will see only Channel as checked
              And user will see only In Memory Channel as checked


        @manual
        Scenario: Filter the Event sources after Camel source creation
            Given user has created knative service "hello-openshift"
              And user has created Camel source
              And user has created Ping Binding
              And user is at Event Sources tab
             When user clicks on Filter dropdown
             Then user will see digit "1" in front of Camel Source, Ping Sources checkboxes
              And user will see only Ping sources as checked
              And user will see only Camel sources as checked
