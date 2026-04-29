(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.76386925924416626543234087876044213771820068359375 338 {+ 3440161311291804 338 (9.87654e+101)}
; 1.76386925924416626543234087876044213771820068359375 338 I == 1.76386925924416626543234087876044213771820068359375 338
; [HW: 1.76386925924416626543234087876044213771820068359375 338] 

; mpf : + 3440161311291804 338
; mpfd: + 3440161311291804 338 (9.87654e+101) class: Pos. norm. non-zero
; hwf : + 3440161311291804 338 (9.87654e+101) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101010001 #b1100001110001100111011111000111011011111100110011100)))
(assert (= r (fp #b0 #b10101010001 #b1100001110001100111011111000111011011111100110011100)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
