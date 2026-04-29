(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7625150118144465860581249216920696198940277099609375p-171 {+ 3434062323071951 -171 (5.88848e-052)}
; Y = -1.4219040184861995168574821946094743907451629638671875p-427 {- 1900086780440563 -427 (-4.10263e-129)}
; 1.7625150118144465860581249216920696198940277099609375p-171 < -1.4219040184861995168574821946094743907451629638671875p-427 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101010100 #b1100001100110100001011110000111001110011101111001111)))
(assert (= y (fp #b1 #b01001010100 #b0110110000000001111001101101100101110010111111110011)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
