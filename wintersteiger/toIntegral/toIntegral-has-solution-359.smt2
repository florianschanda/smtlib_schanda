(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.092134929356101569197790013276971876621246337890625 94 {+ 414938833515946 94 (2.1632e+028)}
; 1.092134929356101569197790013276971876621246337890625 94 I == 1.092134929356101569197790013276971876621246337890625 94
; [HW: 1.092134929356101569197790013276971876621246337890625 94] 

; mpf : + 414938833515946 94
; mpfd: + 414938833515946 94 (2.1632e+028) class: Pos. norm. non-zero
; hwf : + 414938833515946 94 (2.1632e+028) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001011101 #b0001011110010110001001111001110001100111010110101010)))
(assert (= r (fp #b0 #b10001011101 #b0001011110010110001001111001110001100111010110101010)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
