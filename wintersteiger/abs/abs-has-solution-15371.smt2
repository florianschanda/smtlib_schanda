(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8616008147925715565662585504469461739063262939453125p-981 {+ 3880305108441941 -981 (9.10879e-296)}
; 1.8616008147925715565662585504469461739063262939453125p-981 | == 1.8616008147925715565662585504469461739063262939453125p-981
; [HW: 1.8616008147925715565662585504469461739063262939453125p-981] 

; mpf : + 3880305108441941 -981
; mpfd: + 3880305108441941 -981 (9.10879e-296) class: Pos. norm. non-zero
; hwf : + 3880305108441941 -981 (9.10879e-296) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000101010 #b1101110010010001110111101111100110111101101101010101)))
(assert (= r (fp #b0 #b00000101010 #b1101110010010001110111101111100110111101101101010101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
