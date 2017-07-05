(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9343404723749479945382745427195914089679718017578125p670 {- 4207895403224989 670 (-9.47611e+201)}
; Y = 1.0600185271167585909779518260620534420013427734375p-856 {+ 270299416358360 -856 (2.20616e-258)}
; -1.9343404723749479945382745427195914089679718017578125p670 * 1.0600185271167585909779518260620534420013427734375p-856 == -1.025218369234613735585526228533126413822174072265625p-185
; [HW: -1.025218369234613735585526228533126413822174072265625p-185] 

; mpf : - 113573438287898 -185
; mpfd: - 113573438287898 -185 (-2.09058e-056) class: Neg. norm. non-zero
; hwf : - 113573438287898 -185 (-2.09058e-056) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010011101 #b1110111100110000111011111110110000101101111110011101)))
(assert (= y (fp #b0 #b00010100111 #b0000111101011101010111111100101100011110110111011000)))
(assert (= r (fp #b1 #b01101000110 #b0000011001110100101101100000011100011111000000011010)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
