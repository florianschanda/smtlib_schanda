(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.285386631723731465370974547113291919231414794921875 283 {- 1285267128287518 283 (-1.99766e+085)}
; -1.285386631723731465370974547113291919231414794921875 283 I == -1.285386631723731465370974547113291919231414794921875 283
; [HW: -1.285386631723731465370974547113291919231414794921875 283] 

; mpf : - 1285267128287518 283
; mpfd: - 1285267128287518 283 (-1.99766e+085) class: Neg. norm. non-zero
; hwf : - 1285267128287518 283 (-1.99766e+085) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100011010 #b0100100100001111000110010010100111111000000100011110)))
(assert (= r (fp #b1 #b10100011010 #b0100100100001111000110010010100111111000000100011110)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
