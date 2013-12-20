(function() {
  'use strict';
  angular.module('ngEnter', []);

  angular.module('ngEnter').directive('ngEnter', function() {
    return function(scope, element, attrs) {
      return element.bind('keydown keypress', function(event) {
        if (event.which !== 13) {
          return;
        }
        scope.$apply(function() {
          return scope.$eval(attrs.ngEnter);
        });
        return event.preventDefault();
      });
    };
  });

}).call(this);
