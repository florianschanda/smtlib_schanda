(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.499142075788751693465883363387547433376312255859375 896 {- 2247936066527158 896 (-7.91989e+269)}
; -1.499142075788751693465883363387547433376312255859375 896 I == -1.499142075788751693465883363387547433376312255859375 896
; [HW: -1.499142075788751693465883363387547433376312255859375 896] 

; mpf : - 2247936066527158 896
; mpfd: - 2247936066527158 896 (-7.91989e+269) class: Neg. norm. non-zero
; hwf : - 2247936066527158 896 (-7.91989e+269) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101111111 #b0111111111000111110001100110101110010001111110110110)))
(assert (= r (fp #b1 #b11101111111 #b0111111111000111110001100110101110010001111110110110)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
