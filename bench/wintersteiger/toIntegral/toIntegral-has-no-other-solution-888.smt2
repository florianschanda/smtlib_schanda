(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.017225036701062013122509597451426088809967041015625 247 {- 77574668868346 247 (-2.30052e+074)}
; -1.017225036701062013122509597451426088809967041015625 247 I == -1.017225036701062013122509597451426088809967041015625 247
; [HW: -1.017225036701062013122509597451426088809967041015625 247] 

; mpf : - 77574668868346 247
; mpfd: - 77574668868346 247 (-2.30052e+074) class: Neg. norm. non-zero
; hwf : - 77574668868346 247 (-2.30052e+074) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011110110 #b0000010001101000110111000010100101001101101011111010)))
(assert (= r (fp #b1 #b10011110110 #b0000010001101000110111000010100101001101101011111010)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
