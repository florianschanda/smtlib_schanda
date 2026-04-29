(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.877321621152567399093413769151084125041961669921875p839 {+ 3951105326106782 839 (6.88185e+252)}
; Y = 1.76379022103285354461377210100181400775909423828125p70 {+ 3439805354832788 70 (2.08232e+021)}
; 1.877321621152567399093413769151084125041961669921875p839 < 1.76379022103285354461377210100181400775909423828125p70 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101000110 #b1110000010011000001001100101011011101100100010011110)))
(assert (= y (fp #b0 #b10001000101 #b1100001110000111110000011000010001010111001110010100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
