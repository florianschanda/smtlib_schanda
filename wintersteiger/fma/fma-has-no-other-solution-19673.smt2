(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.20762673948760212994102403172291815280914306640625p291 {+ 935067706588516 291 (4.80465e+087)}
; Y = -1.9937437105390765079704351592226885259151458740234375p994 {- 4475423804485559 994 (-3.33799e+299)}
; Z = -1.6212533341117401075592852066620253026485443115234375p-130 {- 2797876284008311 -130 (-1.19111e-039)}
; 1.20762673948760212994102403172291815280914306640625p291 x -1.9937437105390765079704351592226885259151458740234375p994 -1.6212533341117401075592852066620253026485443115234375p-130 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100100010 #b0011010100100111000001101010011111011111110101100100)))
(assert (= y (fp #b1 #b11111100001 #b1111111001100101111111001110000101011110111110110111)))
(assert (= z (fp #b1 #b01101111101 #b1001111100001010011101010110000010001010011101110111)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.fma roundNearestTiesToEven x y z) r)))
(check-sat)
(exit)
