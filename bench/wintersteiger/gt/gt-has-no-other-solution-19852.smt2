(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3920695341799500521773325090180151164531707763671875p985 {+ 1765724208036147 985 (4.55205e+296)}
; Y = -1.2614298793082581173763401238829828798770904541015625p798 {- 1177375507036185 798 (-2.10281e+240)}
; 1.3920695341799500521773325090180151164531707763671875p985 > -1.2614298793082581173763401238829828798770904541015625p798 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111011000 #b0110010001011110101010110100001100001111100100110011)))
(assert (= y (fp #b1 #b11100011101 #b0100001011101101000100011000110111010011100000011001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
