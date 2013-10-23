;; CSS and Rainbow modes 
(require 'rainbow-mode)
(defun all-css-modes() (css-mode) (rainbow-mode)) 

;; Load both major and minor modes in one call based on file type 
(add-to-list 'auto-mode-alist '("\\.css$" . all-css-modes)) 
