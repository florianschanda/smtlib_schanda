(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.02841068395535639723448184668086469173431396484375p-116 {- 127950345674684 -116 (-1.2379e-035)}
; Y = -0.9484494378369399125716654452844522893428802490234375p-1022 {- 4271436534822199 -1023 (-2.11037e-308)}
; -1.02841068395535639723448184668086469173431396484375p-116 = -0.9484494378369399125716654452844522893428802490234375p-1022 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110001011 #b0000011101000101111011000010111001110001111110111100)))
(assert (= y (fp #b1 #b00000000000 #b1111001011001101100101010001010101101011010100110111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
