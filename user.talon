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

cider do select <user.text>:
  user.escape_and_sleep()
  user.cider_do("select :")
  insert(text)
  actions.key("left")

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