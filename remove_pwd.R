shell_cmd = '"C:\\Program Files\\gs\\gs9.21\\bin\\gswin64c" -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=%s_noPW.pdf %s'

remove_pwd = function(fn) {
  shell(sprintf(shell_cmd, fn, fn))
}

files = list.files()
for (file in files) remove_pwd(file)


