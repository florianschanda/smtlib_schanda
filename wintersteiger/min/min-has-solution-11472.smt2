(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.752069746338845046551568884751759469509124755859375p318 {+ 3387021029368246 318 (9.356e+095)}
; Y = -1.881758605290233976603531118598766624927520751953125p-892 {- 3971087726215826 -892 (-5.69912e-269)}
; 1.752069746338845046551568884751759469509124755859375p318 m -1.881758605290233976603531118598766624927520751953125p-892 == -1.881758605290233976603531118598766624927520751953125p-892
; [HW: -1.881758605290233976603531118598766624927520751953125p-892] 

; mpf : - 3971087726215826 -892
; mpfd: - 3971087726215826 -892 (-5.69912e-269) class: Neg. norm. non-zero
; hwf : - 3971087726215826 -892 (-5.69912e-269) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100111101 #b1100000010000111101001001001010011010110000110110110)))
(assert (= y (fp #b1 #b00010000011 #b1110000110111010111011101001010010110000001010010010)))
(assert (= r (fp #b1 #b00010000011 #b1110000110111010111011101001010010110000001010010010)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
