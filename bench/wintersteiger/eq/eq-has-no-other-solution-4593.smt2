(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3502780064946311444629145626095123589038848876953125p849 {- 1577511899525301 849 (-5.06862e+255)}
; Y = 1.1254363427803311115127371522248722612857818603515625p413 {+ 564915066604217 413 (2.38072e+124)}
; -1.3502780064946311444629145626095123589038848876953125p849 = 1.1254363427803311115127371522248722612857818603515625p413 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101010000 #b0101100110101011110100011100011001100111000010110101)))
(assert (= y (fp #b0 #b10110011100 #b0010000000011100100110001001110111111000101010111001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
