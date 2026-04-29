(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.981077391733516268601533738547004759311676025390625 826 {+ 4418379775832682 826 (8.86498e+248)}
; 1.981077391733516268601533738547004759311676025390625 826 I == 1.981077391733516268601533738547004759311676025390625 826
; [HW: 1.981077391733516268601533738547004759311676025390625 826] 

; mpf : + 4418379775832682 826
; mpfd: + 4418379775832682 826 (8.86498e+248) class: Pos. norm. non-zero
; hwf : + 4418379775832682 826 (8.86498e+248) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100111001 #b1111101100100111111000110101000001010111001001101010)))
(assert (= r (fp #b0 #b11100111001 #b1111101100100111111000110101000001010111001001101010)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
