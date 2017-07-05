(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5932533846312748604390208129188977181911468505859375p-714 {- 2671775721961695 -714 (-1.84871e-215)}
; Y = -1.2928389498850518801731368512264452874660491943359375p487 {- 1318829385581887 487 (-5.16598e+146)}
; -1.5932533846312748604390208129188977181911468505859375p-714 > -1.2928389498850518801731368512264452874660491943359375p487 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100110101 #b1001011111011111011101000010110100111011100011011111)))
(assert (= y (fp #b1 #b10111100110 #b0100101011110111011111100101000011000000010100111111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
