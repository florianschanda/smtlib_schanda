(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.677738119187008880572875568759627640247344970703125p-893 {+ 3052261141025394 -893 (2.54061e-269)}
; Y = 1.8035101633387899955351940661785192787647247314453125p-329 {+ 3618688072200981 -329 (1.64911e-099)}
; 1.677738119187008880572875568759627640247344970703125p-893 > 1.8035101633387899955351940661785192787647247314453125p-329 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010000010 #b1010110110000000001111101101000100101001001001110010)))
(assert (= y (fp #b0 #b01010110110 #b1100110110110010110101111001000110001011001100010101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
