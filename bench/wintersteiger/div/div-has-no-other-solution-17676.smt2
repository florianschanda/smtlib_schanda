(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.921303971297577906085507493116892874240875244140625p-790 {+ 4149184221830730 -790 (2.95053e-238)}
; Y = -1.501259229867921707324285307549871504306793212890625p623 {- 2257470880849194 623 (-5.22568e+187)}
; 1.921303971297577906085507493116892874240875244140625p-790 / -1.501259229867921707324285307549871504306793212890625p623 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011101001 #b1110101111011010100100111011101001100101111001001010)))
(assert (= y (fp #b1 #b11001101110 #b1000000001010010100001100101111100011001110100101010)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundTowardZero x y) r)))
(check-sat)
(exit)
