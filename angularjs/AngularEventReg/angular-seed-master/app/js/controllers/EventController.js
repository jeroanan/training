'use strict';

eventsApp.controller('EventController',
    function EventController($scope, eventData, $routeParams, $route) {

        $scope.snippet = '<span style="color:red">Hello</span>';
        $scope.snippet2 = '<span style="color:red">Hello</span>';
        $scope.sortorder = "name";

        $scope.event = $route.current.locals.event;

        $scope.upVoteSession = function(session) {
            session.upVoteCount++;
        };

        $scope.downVoteSession = function(session) {
            session.upVoteCount--;
        };

        $scope.reload = function() {
            $route.reload();
        };
    }
);
