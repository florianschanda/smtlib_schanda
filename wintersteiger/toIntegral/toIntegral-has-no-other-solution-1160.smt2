(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6325839365808973990823460553656332194805145263671875 979 {- 2848904781066291 979 (-8.34144e+294)}
; -1.6325839365808973990823460553656332194805145263671875 979 I == -1.6325839365808973990823460553656332194805145263671875 979
; [HW: -1.6325839365808973990823460553656332194805145263671875 979] 

; mpf : - 2848904781066291 979
; mpfd: - 2848904781066291 979 (-8.34144e+294) class: Neg. norm. non-zero
; hwf : - 2848904781066291 979 (-8.34144e+294) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11111010010 #b1010000111110001000001010101011110010111000000110011)))
(assert (= r (fp #b1 #b11111010010 #b1010000111110001000001010101011110010111000000110011)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
