'use strict';

eventsApp
    .directive('greeting', function() {
        return {
            restrict: 'E',
            replace: true,
            template: "<button class='btn' ng-click='sayHello()'>Say Hello</button>",
            controller: '@',
            name: 'ctrl'
        };
    });

eventsApp.controller('GreetingsController',
    function GreetingsController($scope) {
        $scope.sayHello = function() {
            alert("Hello!");
        }
    });


