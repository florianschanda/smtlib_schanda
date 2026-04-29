(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5370452879124829603796342780697159469127655029296875p982 {+ 2418636958523739 982 (6.28264e+295)}
; Y = -1.616330981931643595572722915676422417163848876953125p974 {- 2775707980564242 974 (-2.58075e+293)}
; 1.5370452879124829603796342780697159469127655029296875p982 = -1.616330981931643595572722915676422417163848876953125p974 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111010101 #b1000100101111011110011001100110000001110000101011011)))
(assert (= y (fp #b1 #b11111001101 #b1001110111000111110111100000001011101000011100010010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
