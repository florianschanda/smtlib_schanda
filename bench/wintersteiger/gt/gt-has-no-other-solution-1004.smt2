(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.01834029226166222770189051516354084014892578125p635 {- 82597333395488 635 (-1.45191e+191)}
; Y = -1.9684549881151391925726557019515894353389739990234375p224 {- 4361533523600439 224 (-5.30694e+067)}
; -1.01834029226166222770189051516354084014892578125p635 > -1.9684549881151391925726557019515894353389739990234375p224 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001111010 #b0000010010110001111100110000101101110110100000100000)))
(assert (= y (fp #b1 #b10011011111 #b1111011111101100101010101000010110011010010000110111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
