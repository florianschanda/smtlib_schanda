(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = 1.2780688040356824597409968191641382873058319091796875p-673 {+ 1252310562238459 -673 (3.26112e-203)}
; -zero > 1.2780688040356824597409968191641382873058319091796875p-673 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b00101011110 #b0100011100101111100001000110001101011110111111111011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
