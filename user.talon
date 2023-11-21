app: emacs
--

tag(): user.cider
tag(): user.evil_mode

treemacs: key(f2)

cancel: key("escape")
undo: key("u")
redo: key("R")

emacs go: "emacs -nw\n"
vim go: "vim\n"

cider select <user.text>:
  user.cider_select(text)

dub quote:
  insert("\"\"")
  key(left)

push:
  key("esc")
  sleep(50ms)
  key(A)

squares:
  insert("[]")
  key(left)

not that:
  key(esc)
  sleep(50ms)
  key(u)

copilot toggle:
  user.emacs("copilot-mode")
  user.sleep_and_enter()