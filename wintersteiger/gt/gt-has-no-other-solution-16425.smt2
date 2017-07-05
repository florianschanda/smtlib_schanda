(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -0.41538136816419690688917398802004754543304443359375p-1022 {- 1870711374880924 -1023 (-9.24254e-309)}
; Y = -1.7716156749013902693690170053741894662380218505859375p366 {- 3475048065959135 366 (-2.66286e+110)}
; -0.41538136816419690688917398802004754543304443359375p-1022 > -1.7716156749013902693690170053741894662380218505859375p366 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0110101001010110011011101110111110100010000010011100)))
(assert (= y (fp #b1 #b10101101101 #b1100010110001000100110101101100011001000010011011111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
