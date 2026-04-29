(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.076383335153610065759721692302264273166656494140625 894 {+ 343999959735114 894 (1.42162e+269)}
; 1.076383335153610065759721692302264273166656494140625 894 I == 1.076383335153610065759721692302264273166656494140625 894
; [HW: 1.076383335153610065759721692302264273166656494140625 894] 

; mpf : + 343999959735114 894
; mpfd: + 343999959735114 894 (1.42162e+269) class: Pos. norm. non-zero
; hwf : + 343999959735114 894 (1.42162e+269) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101111101 #b0001001110001101110110111011011001110001101101001010)))
(assert (= r (fp #b0 #b11101111101 #b0001001110001101110110111011011001110001101101001010)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
