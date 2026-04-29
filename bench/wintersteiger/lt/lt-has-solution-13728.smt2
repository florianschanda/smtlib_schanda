(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.33206689253076770995676270104013383388519287109375p960 {+ 1495496333463644 960 (1.29814e+289)}
; Y = 1.0941739689954623759859941856120713055133819580078125p-809 {+ 424121851675965 -809 (3.20494e-244)}
; 1.33206689253076770995676270104013383388519287109375p960 < 1.0941739689954623759859941856120713055133819580078125p-809 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110111111 #b0101010100000010010101011111101110000001000001011100)))
(assert (= y (fp #b0 #b00011010110 #b0001100000011011110010010000010011111000010100111101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
