
# lib/main

QuickSettings = require './quick-settings'
SubAtom = require 'sub-atom'

module.exports =
  activate: -> 
    @subs = new SubAtom
    @subs.add atom.commands.add 'atom-workspace', 'quick-settings:open': ->
      atom.workspace.getActivePane().activateItem new QuickSettings "I'm Alive!"

  deactivate: ->
    @subs.dispose()
    