(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4359112324770666457851575614768080413341522216796875 88 {+ 1963169664150331 88 (4.44393e+026)}
; 1.4359112324770666457851575614768080413341522216796875 88 I == 1.4359112324770666457851575614768080413341522216796875 88
; [HW: 1.4359112324770666457851575614768080413341522216796875 88] 

; mpf : + 1963169664150331 88
; mpfd: + 1963169664150331 88 (4.44393e+026) class: Pos. norm. non-zero
; hwf : + 1963169664150331 88 (4.44393e+026) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001010111 #b0110111110010111111000001110011101110010101100111011)))
(assert (= r (fp #b0 #b10001010111 #b0110111110010111111000001110011101110010101100111011)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
