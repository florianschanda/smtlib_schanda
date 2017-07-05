(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.445325799886048923070802629808895289897918701171875 844 {- 2005569106425278 844 (-1.69544e+254)}
; -1.445325799886048923070802629808895289897918701171875 844 I == -1.445325799886048923070802629808895289897918701171875 844
; [HW: -1.445325799886048923070802629808895289897918701171875 844] 

; mpf : - 2005569106425278 844
; mpfd: - 2005569106425278 844 (-1.69544e+254) class: Neg. norm. non-zero
; hwf : - 2005569106425278 844 (-1.69544e+254) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101001011 #b0111001000000000110111110010001010010011010110111110)))
(assert (= r (fp #b1 #b11101001011 #b0111001000000000110111110010001010010011010110111110)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
