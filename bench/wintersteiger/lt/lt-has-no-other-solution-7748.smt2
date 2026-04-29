(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.78391679464711838676294064498506486415863037109375p624 {- 3530447384262236 624 (-1.24192e+188)}
; Y = -zero {- 0 -1023 (-0)}
; -1.78391679464711838676294064498506486415863037109375p624 < -zero == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001101111 #b1100100010101110110001010110001111001011011001011100)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
