(ensure-packages '(nyan-mode))
(if (display-graphic-p)
    (progn
      (nyan-mode)
      (nyan-start-animation)))

