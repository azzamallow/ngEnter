'use strict'

describe 'Directive: ngEnter', ->

  beforeEach module 'ngEnter'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<ng-enter></ng-enter>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the ngEnter directive'
