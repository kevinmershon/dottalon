cancel: key("escape")
undo: key("u")
redo: key("R")

emacs go: "emacs -nw\n"
vim go: "vim\n"

cider do select <user.text>:
  key("esc")
  sleep(50ms)
  key(i)
  insert("(select :")
  insert(text)
  insert(")")

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