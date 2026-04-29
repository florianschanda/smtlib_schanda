(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4169891548008006765257960068993270397186279296875 448 {- 1877952202178424 448 (-1.02992e+135)}
; -1.4169891548008006765257960068993270397186279296875 448 I == -1.4169891548008006765257960068993270397186279296875 448
; [HW: -1.4169891548008006765257960068993270397186279296875 448] 

; mpf : - 1877952202178424 448
; mpfd: - 1877952202178424 448 (-1.02992e+135) class: Neg. norm. non-zero
; hwf : - 1877952202178424 448 (-1.02992e+135) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110111111 #b0110101010111111110011010001111010100111111101111000)))
(assert (= r (fp #b1 #b10110111111 #b0110101010111111110011010001111010100111111101111000)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
