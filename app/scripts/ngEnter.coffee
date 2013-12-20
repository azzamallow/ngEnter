'use strict'

angular.module 'ngEnter', []

angular.module('ngEnter')
  .directive 'ngEnter', ->
    template: '<div></div>'
    restrict: 'E'
    link: (scope, element, attrs) ->
      element.text 'this is the ngEnter directive'