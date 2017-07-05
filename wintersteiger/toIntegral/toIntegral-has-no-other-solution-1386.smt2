(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3075917082144139502730695312493480741977691650390625 553 {- 1385269902496689 553 (-3.85531e+166)}
; -1.3075917082144139502730695312493480741977691650390625 553 I == -1.3075917082144139502730695312493480741977691650390625 553
; [HW: -1.3075917082144139502730695312493480741977691650390625 553] 

; mpf : - 1385269902496689 553
; mpfd: - 1385269902496689 553 (-3.85531e+166) class: Neg. norm. non-zero
; hwf : - 1385269902496689 553 (-3.85531e+166) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000101000 #b0100111010111110010101001000011101001101001110110001)))
(assert (= r (fp #b1 #b11000101000 #b0100111010111110010101001000011101001101001110110001)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
