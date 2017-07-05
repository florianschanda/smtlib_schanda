(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.140897853459512223395222463295795023441314697265625p931 {- 634547520337562 931 (-2.07096e+280)}
; Y = 1.1567707793268529048447135210153646767139434814453125p174 {+ 706032823358997 174 (2.76992e+052)}
; -1.140897853459512223395222463295795023441314697265625p931 + 1.1567707793268529048447135210153646767139434814453125p174 == -1.1408978534595120013506175382644869387149810791015625p931
; [HW: -1.1408978534595120013506175382644869387149810791015625p931] 

; mpf : - 634547520337561 931
; mpfd: - 634547520337561 931 (-2.07096e+280) class: Neg. norm. non-zero
; hwf : - 634547520337561 931 (-2.07096e+280) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110100010 #b0010010000010001111000011011100010101111011010011010)))
(assert (= y (fp #b0 #b10010101101 #b0010100000100010001000010011101000101101011000010101)))
(assert (= r (fp #b1 #b11110100010 #b0010010000010001111000011011100010101111011010011001)))
(assert (= (fp.add roundTowardPositive x y) r))
(check-sat)
(exit)
