(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.31667325319927552840226780972443521022796630859375 284 {- 1426169545106460 284 (-4.09258e+085)}
; -1.31667325319927552840226780972443521022796630859375 284 I == -1.31667325319927552840226780972443521022796630859375 284
; [HW: -1.31667325319927552840226780972443521022796630859375 284] 

; mpf : - 1426169545106460 284
; mpfd: - 1426169545106460 284 (-4.09258e+085) class: Neg. norm. non-zero
; hwf : - 1426169545106460 284 (-4.09258e+085) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100011011 #b0101000100010001011111111001001000000010010000011100)))
(assert (= r (fp #b1 #b10100011011 #b0101000100010001011111111001001000000010010000011100)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
