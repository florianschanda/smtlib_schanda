(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3197432474380630385013546401751227676868438720703125p228 {+ 1439995570016293 228 (5.69283e+068)}
; Y = -1.31804539251549268641383605427108705043792724609375p-69 {- 1432349111219676 -69 (-2.23286e-021)}
; 1.3197432474380630385013546401751227676868438720703125p228 = -1.31804539251549268641383605427108705043792724609375p-69 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011100011 #b0101000111011010101100011000011011011101000000100101)))
(assert (= y (fp #b1 #b01110111010 #b0101000101101011011011000011111101111111010111011100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
