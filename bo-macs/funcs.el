
(defun bo/capitalize-char (string index)
  "Capitalize specific character INDEX of the input STRING."
  (when (and string (> (length string) 0))
    (let ((start-str (substring string nil index))
          (char (substring string index (+ index 1)))
          (rest-str   (substring string (+ index 1))))
      (concat start-str (upcase char) rest-str))))

(defun bo/uncapitalize-char (string index)
  "Uncapitalize specific character INDEX of the input STRING"
  (when (and string (> (length string) 0))
    (let ((start-str (substring string nil index))
          (char (substring string index (+ index 1)))
          (rest-str   (substring string (+ index 1))))
      (concat start-str (downcase char) rest-str))))

(defun bo/uncapitalize-first-char (string)
  (bo/uncapitalize-char string 0)
  )
