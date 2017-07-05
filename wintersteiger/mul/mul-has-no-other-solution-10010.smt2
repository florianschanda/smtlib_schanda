(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.730283797886162044932234493899159133434295654296875p794 {+ 3288905840034830 794 (1.80274e+239)}
; Y = -1.436352690516455421487762578180991113185882568359375p-363 {- 1965157814412022 -363 (-7.64492e-110)}
; 1.730283797886162044932234493899159133434295654296875p794 * -1.436352690516455421487762578180991113185882568359375p-363 == -1.2426488942254099168138736786204390227794647216796875p432
; [HW: -1.2426488942254099168138736786204390227794647216796875p432] 

; mpf : - 1092793469615419 432
; mpfd: - 1092793469615419 432 (-1.37818e+130) class: Neg. norm. non-zero
; hwf : - 1092793469615419 432 (-1.37818e+130) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100011001 #b1011101011110011111000010000010010111000010000001110)))
(assert (= y (fp #b1 #b01010010100 #b0110111110110100110011110101011101001010001011110110)))
(assert (= r (fp #b1 #b10110101111 #b0011111000011110001111001110100100011011110100111011)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
