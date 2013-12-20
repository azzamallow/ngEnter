'use strict'

describe 'Directive: ngEnter', ->

  beforeEach module 'ngEnter'

  scope = {}
  element = null

  beforeEach inject ($controller, $rootScope, $compile) ->
    scope = $rootScope.$new()
    element = angular.element '<div ng-enter="modelValue = \'newModelValue\'"></div>'
    element = $compile(element) scope

  describe 'when enter key is not down', ->
    event = null

    beforeEach ->
      event = $.Event 'keydown', which: 14
      $('body').append element
      element.trigger event

    afterEach ->
      element.remove()

    it 'should not evaluate expression', ->
      expect(scope.modelValue).not.toEqual 'newModelValue'

    it 'should do default browser behaviour', ->
      expect(event.isDefaultPrevented()).toBeFalsy()

  describe 'when the enter key is down', ->
    event = null

    beforeEach ->
      event = $.Event 'keydown', which: 13
      $('body').append element
      element.trigger event

    afterEach ->
      element.remove()

    it 'should evaluate the expression given', ->
      expect(scope.modelValue).toEqual 'newModelValue'      

    it 'should prevent any default behaviour', ->
      expect(event.isDefaultPrevented()).toBeTruthy()

  describe 'when the enter key is pressed', ->
    event = null

    beforeEach ->
      event = $.Event 'keypress', which: 13
      $('body').append element
      element.trigger event

    afterEach ->
      element.remove()

    it 'should evaluate the expression given', ->
      expect(scope.modelValue).toEqual 'newModelValue'      

    it 'should prevent any default behaviour', ->
      expect(event.isDefaultPrevented()).toBeTruthy()