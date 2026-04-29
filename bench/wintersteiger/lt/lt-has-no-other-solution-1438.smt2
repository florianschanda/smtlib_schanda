(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6482821101638005512057816304150037467479705810546875p401 {- 2919603069764651 401 (-8.51255e+120)}
; Y = -1.5743227857312211970253201798186637461185455322265625p-122 {- 2586519883809513 -122 (-2.96097e-037)}
; -1.6482821101638005512057816304150037467479705810546875p401 < -1.5743227857312211970253201798186637461185455322265625p-122 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110010000 #b1010010111110101110100001111110110111100010000101011)))
(assert (= y (fp #b1 #b01110000101 #b1001001100000110110100010110111000010000001011101001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
