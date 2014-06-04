'use strict';

eventsApp
    .directive('greeting', function() {
        return {
            restrict: 'E',
            priority: -1,
            replace: true,
            template: "<button class='btn' ng-click='sayHello()'>Say Hello</button>",
            controller: function($scope) {
                var greetings = ['Hello'];
                $scope.sayHello = function() {
                    alert(greetings.join());
                };
                this.addGreeting = function(greeting) {
                    greetings.push(greeting);
                };
            }
        };
    })
    .directive('finnish', function() {
        return {
            restrict: 'A',
            priority: -1,
            terminal: true,
            require: 'greeting',
            link: function (scope, element, attrs, controller) {
                controller.addGreeting('hei');
            }
        };
    })
    .directive('hindi', function() {
        return {
            restrict: 'A',
            priority: -2,
            require: 'greeting',
            link: function (scope, element, attrs, controller) {
                controller.addGreeting('some stuff');
            }
        };
    });

eventsApp.controller('GreetingsController',
    function GreetingsController($scope) {

    });


