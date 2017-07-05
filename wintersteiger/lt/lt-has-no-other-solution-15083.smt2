(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6034358015516494422314508483395911753177642822265625p678 {- 2717633251010025 678 (-2.01089e+204)}
; Y = -1.035867056790821916223421794711612164974212646484375p-621 {- 161530863598022 -621 (-1.19036e-187)}
; -1.6034358015516494422314508483395911753177642822265625p678 < -1.035867056790821916223421794711612164974212646484375p-621 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010100101 #b1001101001111010110001001100100011100110010111101001)))
(assert (= y (fp #b1 #b00110010010 #b0000100100101110100101010101101111101011100111000110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
