(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6837520536905279389117140453890897333621978759765625p634 {+ 3079345494214473 634 (1.20032e+191)}
; 1.6837520536905279389117140453890897333621978759765625p634 | == 1.6837520536905279389117140453890897333621978759765625p634
; [HW: 1.6837520536905279389117140453890897333621978759765625p634] 

; mpf : + 3079345494214473 634
; mpfd: + 3079345494214473 634 (1.20032e+191) class: Pos. norm. non-zero
; hwf : + 3079345494214473 634 (1.20032e+191) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001111001 #b1010111100001010010111111110010100101100011101001001)))
(assert (= r (fp #b0 #b11001111001 #b1010111100001010010111111110010100101100011101001001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
