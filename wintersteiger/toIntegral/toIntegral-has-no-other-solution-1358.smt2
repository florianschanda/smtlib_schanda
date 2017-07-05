(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2846716314441419815040035246056504547595977783203125 165 {- 1282047053294789 165 (-6.00816e+049)}
; -1.2846716314441419815040035246056504547595977783203125 165 I == -1.2846716314441419815040035246056504547595977783203125 165
; [HW: -1.2846716314441419815040035246056504547595977783203125 165] 

; mpf : - 1282047053294789 165
; mpfd: - 1282047053294789 165 (-6.00816e+049) class: Neg. norm. non-zero
; hwf : - 1282047053294789 165 (-6.00816e+049) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010100100 #b0100100011100000001111010111001100100110110011000101)))
(assert (= r (fp #b1 #b10010100100 #b0100100011100000001111010111001100100110110011000101)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
