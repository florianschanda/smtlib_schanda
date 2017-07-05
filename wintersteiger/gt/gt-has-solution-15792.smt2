(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7186305717104508605785895269946195185184478759765625p155 {+ 3236424374972233 155 (7.84932e+046)}
; Y = 1.89352408875776223595721603487618267536163330078125p124 {+ 4024074753176020 124 (4.02708e+037)}
; 1.7186305717104508605785895269946195185184478759765625p155 > 1.89352408875776223595721603487618267536163330078125p124 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010011010 #b1011011111111000001011000101001101100110111101001001)))
(assert (= y (fp #b0 #b10001111011 #b1110010010111101111111101010001101100111000111010100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
