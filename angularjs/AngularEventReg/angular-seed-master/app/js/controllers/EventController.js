'use strict';

eventsApp.controller('EventController',
    function EventController($scope, eventData, $anchorScroll) {

        $scope.snippet = '<span style="color:red">Hello</span>';
        $scope.snippet2 = '<span style="color:red">Hello</span>';
        $scope.sortorder = "name";

        eventData.getEvent()
            .$promise.then(
            function(event) {
                $scope.event = event;
                console.log(event);
            },
            function(response) {
                console.log(response);
            }
        );

        $scope.upVoteSession = function(session) {
            session.upVoteCount++;
        };

        $scope.downVoteSession = function(session) {
            session.upVoteCount--;
        };
    }
);
