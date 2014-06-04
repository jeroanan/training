'use strict';

eventsApp.directive('gravatar', function(GravatarUrlBuilder) {

    return {
        restrict: 'E',
        template: '<img />',
        replace: true,
        link: function (scope, element, attrs, controller) {
            attrs.$observe('email', function(newValue, oldValue) {
                if (newValue !== oldValue) {
                    attrs.$set('src', GravatarUrlBuilder.buildGravatarUrl(newValue));
                }
            })
        },
        scope: {
            email: "@"
        }
    };
});