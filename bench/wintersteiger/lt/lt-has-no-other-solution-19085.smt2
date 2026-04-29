(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4389019274820402660708396069821901619434356689453125p899 {- 1976638557060309 899 (-6.08131e+270)}
; Y = -1.783438784797009901694764266721904277801513671875p-331 {- 3528294619279408 -331 (-4.0769e-100)}
; -1.4389019274820402660708396069821901619434356689453125p899 < -1.783438784797009901694764266721904277801513671875p-331 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110000010 #b0111000001011011111000000111000010101111110011010101)))
(assert (= y (fp #b1 #b01010110100 #b1100100010001111011100011011011100011111000000110000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
