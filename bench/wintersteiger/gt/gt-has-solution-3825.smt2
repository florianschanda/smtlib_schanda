(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6906640905160361665338086822885088622570037841796875p366 {- 3110474540686203 366 (-2.54118e+110)}
; Y = -1.7839301693001361481805133735178969800472259521484375p959 {- 3530507618344583 959 (-8.69248e+288)}
; -1.6906640905160361665338086822885088622570037841796875p366 > -1.7839301693001361481805133735178969800472259521484375p959 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101101101 #b1011000011001111010111001010000101001001101101111011)))
(assert (= y (fp #b1 #b11110111110 #b1100100010101111101001011100011101111101111010000111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
