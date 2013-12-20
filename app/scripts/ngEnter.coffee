'use strict'

angular.module 'ngEnter', []

angular.module('ngEnter')
  .directive 'ngEnter', ->
    (scope, element, attrs) ->
      element.bind 'keydown keypress', (event) ->
        return if event.which != 13

        scope.$apply ->
          scope.$eval attrs.ngEnter
        
        event.preventDefault()