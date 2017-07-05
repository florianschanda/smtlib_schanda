(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1141818299850012596863280123216100037097930908203125p312 {- 514229246972933 312 (-9.2964e+093)}
; Y = 1.237940842303022481729612991330213844776153564453125p673 {+ 1071590288732114 673 (4.85162e+202)}
; -1.1141818299850012596863280123216100037097930908203125p312 % 1.237940842303022481729612991330213844776153564453125p673 == -1.1141818299850012596863280123216100037097930908203125p312
; [HW: -1.1141818299850012596863280123216100037097930908203125p312] 

; mpf : - 514229246972933 312
; mpfd: - 514229246972933 312 (-9.2964e+093) class: Neg. norm. non-zero
; hwf : - 514229246972933 312 (-9.2964e+093) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100110111 #b0001110100111011000001010011100110010101010000000101)))
(assert (= y (fp #b0 #b11010100000 #b0011110011101001101100001110100000010010111111010010)))
(assert (= r (fp #b1 #b10100110111 #x1d3b053995405)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
