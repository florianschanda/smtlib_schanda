(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7470101654116714229303397587500512599945068359375p743 {+ 3364234702589976 743 (8.08318e+223)}
; 1.7470101654116714229303397587500512599945068359375p743 | == 1.7470101654116714229303397587500512599945068359375p743
; [HW: 1.7470101654116714229303397587500512599945068359375p743] 

; mpf : + 3364234702589976 743
; mpfd: + 3364234702589976 743 (8.08318e+223) class: Pos. norm. non-zero
; hwf : + 3364234702589976 743 (8.08318e+223) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011100110 #b1011111100111100000011101110011000111001000000011000)))
(assert (= r (fp #b0 #b11011100110 #b1011111100111100000011101110011000111001000000011000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
