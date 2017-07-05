(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1572997273252039196478335725259967148303985595703125p29 {- 708414993367269 29 (-6.21321e+008)}
; Y = 1.82374581357996934372067698859609663486480712890625p-937 {+ 3709821339086756 -937 (1.56985e-282)}
; -1.1572997273252039196478335725259967148303985595703125p29 * 1.82374581357996934372067698859609663486480712890625p-937 == -1.0553102663832902852192319187452085316181182861328125p-907
; [HW: -1.0553102663832902852192319187452085316181182861328125p-907] 

; mpf : - 249095295073549 -907
; mpfd: - 249095295073549 -907 (-9.75381e-274) class: Neg. norm. non-zero
; hwf : - 249095295073549 -907 (-9.75381e-274) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000011100 #b0010100001000100110010111000000010001000000011100101)))
(assert (= y (fp #b0 #b00001010110 #b1101001011100001000000010111000110001010111110100100)))
(assert (= r (fp #b1 #b00001110100 #b0000111000101000110100000100100100111111110100001101)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
