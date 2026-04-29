(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -0.4880352924053372731805211515165865421295166015625p-1022 {- 2197915561020328 -1023 (-1.08591e-308)}
; Y = 1.899651446516680497467177701764740049839019775390625p-285 {+ 4051669919295850 -285 (3.0558e-086)}
; -0.4880352924053372731805211515165865421295166015625p-1022 < 1.899651446516680497467177701764740049839019775390625p-285 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0111110011101111111000011000010000101100101110101000)))
(assert (= y (fp #b0 #b01011100010 #b1110011001001111100011101010010010010110100101101010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
