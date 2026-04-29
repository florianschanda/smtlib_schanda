(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.80565121501832326345038381987251341342926025390625p-593 {+ 3628330511747108 -593 (5.56989e-179)}
; Y = -1.160857192924255709698400096385739743709564208984375p1019 {- 724436394113542 1019 (-6.52145e+306)}
; 1.80565121501832326345038381987251341342926025390625p-593 = -1.160857192924255709698400096385739743709564208984375p1019 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110101110 #b1100111000111111001010000111010001111100100000100100)))
(assert (= y (fp #b1 #b11111111010 #b0010100100101101111011111101111011101111101000000110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
