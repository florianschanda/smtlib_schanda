(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6489379914595272413890825191629119217395782470703125p726 {+ 2922556896523685 726 (5.82078e+218)}
; Y = -1.0550895455478102036295240395702421665191650390625p-150 {- 248101256801128 -150 (-7.39248e-046)}
; 1.6489379914595272413890825191629119217395782470703125p726 = -1.0550895455478102036295240395702421665191650390625p-150 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011010101 #b1010011000100000110011001101101001110011010110100101)))
(assert (= y (fp #b1 #b01101101001 #b0000111000011010010110010011010001111010101101101000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
