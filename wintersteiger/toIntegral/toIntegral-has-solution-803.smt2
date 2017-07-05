(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6346059843647287035395265775150619447231292724609375 1016 {- 2858011274712079 1016 (-1.14786e+306)}
; -1.6346059843647287035395265775150619447231292724609375 1016 I == -1.6346059843647287035395265775150619447231292724609375 1016
; [HW: -1.6346059843647287035395265775150619447231292724609375 1016] 

; mpf : - 2858011274712079 1016
; mpfd: - 2858011274712079 1016 (-1.14786e+306) class: Neg. norm. non-zero
; hwf : - 2858011274712079 1016 (-1.14786e+306) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111110111 #b1010001001110101100010011010110010110001010000001111)))
(assert (= r (fp #b1 #b11111110111 #b1010001001110101100010011010110010110001010000001111)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
