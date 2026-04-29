(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3218642191711265088116533661377616226673126220703125 987 {+ 1449547577522981 987 (1.72899e+297)}
; 1.3218642191711265088116533661377616226673126220703125 987 I == 1.3218642191711265088116533661377616226673126220703125 987
; [HW: 1.3218642191711265088116533661377616226673126220703125 987] 

; mpf : + 1449547577522981 987
; mpfd: + 1449547577522981 987 (1.72899e+297) class: Pos. norm. non-zero
; hwf : + 1449547577522981 987 (1.72899e+297) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111011010 #b0101001001100101101100011000011100010111101100100101)))
(assert (= r (fp #b0 #b11111011010 #b0101001001100101101100011000011100010111101100100101)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
