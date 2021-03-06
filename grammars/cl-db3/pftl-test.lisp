;; - cem bozsahin & mark steedman 2015-2018
;; The complete set of derivations in pftl and its supplement (suffix s means supplement)
;; numbers are indexes to the paper example numbers
;; This is not part of CCGlab package 
;; load this file in CCGlab after you did (load-grammar "pftl") or 

;; set up a database of examples 
(defparameter *db* '(
(4 (sally sees harry))
(14 (balb us mur um aedificat))
(15 (sally sees harry))
(16 (missed "the saturday dance"))
(20a (see en))
(20b (persuade en))
(21 (bural -na-ygu))
(26 (tom persuades harry to go))
(34a ("bayi yara" walngarra naba-ygu))
(34b ("bayi yara" walngarra bural -na-ygu "bagun yibi-gu"))
(34c ("bayi yara" walngarra "bangun yibi-ngu" bura-li))
(34d (yabu numa-ngu giga-n banaga-ygu))
(34e ("bayi yara" numa-ngu giga-n gubi-ngu mawa-li))
(43 (fairies seem "to be" "at the bottom of my garden"))
(50 (There seem "to be" fairies "at the bottom of my garden"))
(51 (There seem fairies "to be" "at the bottom of my garden"))
(52 (man that sally sees))
(53 (mur us quem balb us aedificare vult))
(54 (wall that balbus wants to build))
(56 (mur um balb us aedificat))
(59a (dynes welodd gath))
(59b (ddynes welodd cath))
(60 (dynes werthodd ieuan "y ceffyl" iddi))
(63a ("bayi yara" miyanda -nu yanu))
(63b ("balan yibi" "bangul yara-ngu" miyanda -nu-ru bura-n))
(63c ("bayi yara" jilwal-na -nu "begun guda-gu" yanu))
(65 (man that walks and talks))
(66bad (man that walks and he talks))
(fig1a (the house that jack built))
(fig1b (i bought and you sold "the house that jack built"))
(fig1c (give mary records and alice books))
(fig1d (balb us mur um et marc us villa m aedificare vult))
(fn40a (the CEO who Mercier believes and who Camier hopes might save the company))
(fn40bbad (the CEO who Mercier hopes and who believes might save the company))
(72 ("bayi yara" yanu "," "bangun yibi-ngu" bura-n))
(94a (ubur a-tuuk))
(94b (ubur a-puot dhaag-e))
(94c (ubur dhaage a-yaan-e))
(3s (harry saw himself))
(23s (mae rhiannon yn cysgu))
(26s (gwelodd gwyn "ei hun"))
(fig1as (maen nhw n perswadio grwpiau i fynd adref))
(fig1bs (roedd gwyn yn dymuno i grwpiau fynd adref))
(43s (nyurra nana-na bura-n "," banaga-nyu))
(50as (arnaup nutaraq titirautimik nani-si rqu-vaa))
(50bbads (arnaup nutaraq titirauti nani rqu-vaa))
(51as (nanuq piita-p tugu -ta-a))
(51bs (miiraq kamat -tu-q))
(52as (angut aallaam-mik tigu-si-sima -su-q))
(52bbads (angut aallaat tigu-sima -sa-a))
(59s (ang babae ng b-um-ili ng-baro))
(61b (iyon ang baro ng b-in-ili ng-babae))
(63s (sino ang kabibili lang "ng tela"))
(65s (ano ang sinabi "ni pedro" na binili "ni linda"))
(69s (huhugasan ko at pupunasan mo ang-mga-pinggan))
;; below are experimental
(l1 (persuade Harry to buy and Barry to sell))
(l2 (persuade to go to London John))
(l3 (want to go and promise to accompany to London)) ;; think of who didja ...
(l4 (folded rug over)) ; and curtains under, the painting
(d1 (what you can)) ;; and what you must not count on
(d2 (what Terry asked)) ;; and what Mary promised Harry to read
(s2 (gave without reading)) ;; the book I gave without reading and lent wout stamping to Harry
))

(defun  test-ders()
  (pprint (which-ccglab))
  (status)
  (basic-ccg 'off)
  (format t "~%basic ccg is off")
  (terpri)
  (dolist (p *db*)(progn (ccg-deduce (second p))
			   (format t "~%=======~%~s~%========~%" (first p))
			   (cky-show-deduction)))
  (pprint (which-ccglab))
  (status)
  (basic-ccg 'on)
  (format t "~%basic ccg is on")
  (terpri)
  (dolist (p *db*)(progn (ccg-deduce (second p))
			   (format t "~%=======~%~s~%========~%" (first p))
			   (cky-show-deduction))))

(defun  test-lfs()
  (pprint (which-ccglab))
  (status)
  (terpri)
  (dolist (p *db*)
    (progn (ccg-deduce (second p))
	   (format t "~%=======~%~s~%========~%" (first p))
	   (cky-show-lf-eqv))))
