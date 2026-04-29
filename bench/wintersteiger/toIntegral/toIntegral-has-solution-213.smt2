(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0039685573566945464563104906119406223297119140625 570 {- 17872793432808 570 (-3.87987e+171)}
; -1.0039685573566945464563104906119406223297119140625 570 I == -1.0039685573566945464563104906119406223297119140625 570
; [HW: -1.0039685573566945464563104906119406223297119140625 570] 

; mpf : - 17872793432808 570
; mpfd: - 17872793432808 570 (-3.87987e+171) class: Neg. norm. non-zero
; hwf : - 17872793432808 570 (-3.87987e+171) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000111001 #b0000000100000100000101010101100000001111001011101000)))
(assert (= r (fp #b1 #b11000111001 #b0000000100000100000101010101100000001111001011101000)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
