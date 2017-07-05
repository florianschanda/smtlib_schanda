(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0789879374337629780455927175353281199932098388671875p-708 {- 355730045593459 -708 (-8.01271e-214)}
; Y = -1.0488620809744746420477667925297282636165618896484375p983 {- 220055249669191 983 (-8.57441e+295)}
; -1.0789879374337629780455927175353281199932098388671875p-708 M -1.0488620809744746420477667925297282636165618896484375p983 == -1.0789879374337629780455927175353281199932098388671875p-708
; [HW: -1.0789879374337629780455927175353281199932098388671875p-708] 

; mpf : - 355730045593459 -708
; mpfd: - 355730045593459 -708 (-8.01271e-214) class: Neg. norm. non-zero
; hwf : - 355730045593459 -708 (-8.01271e-214) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100111011 #b0001010000111000100011011011000000001110011101110011)))
(assert (= y (fp #b1 #b11111010110 #b0000110010000010001110011010111111001100110001000111)))
(assert (= r (fp #b1 #b00100111011 #b0001010000111000100011011011000000001110011101110011)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
