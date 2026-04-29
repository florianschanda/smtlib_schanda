(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.641528776091686570026695335400290787220001220703125p805 {- 2889188756953970 805 (-3.50264e+242)}
; -1.641528776091686570026695335400290787220001220703125p805 | == 1.641528776091686570026695335400290787220001220703125p805
; [HW: 1.641528776091686570026695335400290787220001220703125p805] 

; mpf : + 2889188756953970 805
; mpfd: + 2889188756953970 805 (3.50264e+242) class: Pos. norm. non-zero
; hwf : + 2889188756953970 805 (3.50264e+242) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100100100 #b1010010000111011001110101101100011000001101101110010)))
(assert (= r (fp #b0 #b11100100100 #b1010010000111011001110101101100011000001101101110010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
