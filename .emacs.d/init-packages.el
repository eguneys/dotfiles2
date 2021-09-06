(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))

(unless package-archive-contents
  (package-refresh-contents))
