(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.161644360842553513890607064240612089633941650390625 62 {+ 727981483257066 62 (5.35714e+018)}
; 1.161644360842553513890607064240612089633941650390625 62 I == 1.161644360842553513890607064240612089633941650390625 62
; [HW: 1.161644360842553513890607064240612089633941650390625 62] 

; mpf : + 727981483257066 62
; mpfd: + 727981483257066 62 (5.35714e+018) class: Pos. norm. non-zero
; hwf : + 727981483257066 62 (5.35714e+018) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000111101 #b0010100101100001100001100101101101100110110011101010)))
(assert (= r (fp #b0 #b10000111101 #b0010100101100001100001100101101101100110110011101010)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
