# NOTE

Add these settings to keybindings.json to get alternate file switching
// Place your key bindings in this file to override the defaults
[
  {
    "key": "ctrl+6",
    "command": "-workbench.action.focusSixthEditorGroup"
  },
  {
    "key": "ctrl+6",
    "command": "workbench.action.quickOpenPreviousRecentlyUsedEditorInGroup",
    "when": "!activeEditorGroupEmpty"
  },
  {
    "key": "ctrl+6",
    "command": "workbench.action.quickOpenNavigateNextInEditorPicker",
    "when": "inEditorsPicker && inQuickOpen"
  }
]


