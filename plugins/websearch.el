(defun websearch (prompt url)
  (browse-url
   (concat url (url-hexify-string (if mark-active
				      (buffer-substring (region-beginning) (region-end))
				    (read-string prompt))))))
  
(defun google ()
  (interactive)
  (websearch "Google: " "http://www.google.com/search?ie=utf-8&oe=utf-8&q="))

(defun bing ()
  (interactive)
  (websearch "Bing: " "http://www.bing.com/search?q="))

(defun yahoo ()
  (interactive)
  (websearch "Yahoo: " "http://search.yahoo.com/search?p="))

(global-set-key (kbd "C-x m") 'bing)
(global-set-key (kbd "C-x y") 'yahoo)
(global-set-key (kbd "C-x g") 'google)

(provide 'websearch)
