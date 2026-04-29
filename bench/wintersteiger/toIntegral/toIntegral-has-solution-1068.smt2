(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2436895630157882575161920613027177751064300537109375 109 {- 1097480225191983 109 (-8.07201e+032)}
; -1.2436895630157882575161920613027177751064300537109375 109 I == -1.2436895630157882575161920613027177751064300537109375 109
; [HW: -1.2436895630157882575161920613027177751064300537109375 109] 

; mpf : - 1097480225191983 109
; mpfd: - 1097480225191983 109 (-8.07201e+032) class: Neg. norm. non-zero
; hwf : - 1097480225191983 109 (-8.07201e+032) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001101100 #b0011111001100010011100000110111110000111100000101111)))
(assert (= r (fp #b1 #b10001101100 #b0011111001100010011100000110111110000111100000101111)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
