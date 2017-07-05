(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.004728055243499174054022660129703581333160400390625 352 {+ 21293267832810 352 (9.21737e+105)}
; 1.004728055243499174054022660129703581333160400390625 352 I == 1.004728055243499174054022660129703581333160400390625 352
; [HW: 1.004728055243499174054022660129703581333160400390625 352] 

; mpf : + 21293267832810 352
; mpfd: + 21293267832810 352 (9.21737e+105) class: Pos. norm. non-zero
; hwf : + 21293267832810 352 (9.21737e+105) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101011111 #b0000000100110101110110111001101010100100111111101010)))
(assert (= r (fp #b0 #b10101011111 #b0000000100110101110110111001101010100100111111101010)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
