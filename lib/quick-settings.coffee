
# lib/quick-settings

QuickSettingsView = require './quick-settings-view'

module.exports =
class QuickSettings
  constructor: (@tabTitle) ->
    
  getTitle:     -> @tabTitle
  getViewClass: -> QuickSettingsView
  
