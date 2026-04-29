(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.69707729710504917619573461706750094890594482421875 872 {+ 3139357055490732 872 (5.34389e+262)}
; 1.69707729710504917619573461706750094890594482421875 872 I == 1.69707729710504917619573461706750094890594482421875 872
; [HW: 1.69707729710504917619573461706750094890594482421875 872] 

; mpf : + 3139357055490732 872
; mpfd: + 3139357055490732 872 (5.34389e+262) class: Pos. norm. non-zero
; hwf : + 3139357055490732 872 (5.34389e+262) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101100111 #b1011001001110011101010000110000111011001101010101100)))
(assert (= r (fp #b0 #b11101100111 #b1011001001110011101010000110000111011001101010101100)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
