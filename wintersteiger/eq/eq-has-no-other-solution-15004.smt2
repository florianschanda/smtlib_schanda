(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4919198881159285718922546948306262493133544921875p-260 {+ 2215410224815032 -260 (8.05279e-079)}
; Y = -1.76755697162511093978309872909449040889739990234375p309 {- 3456769291396476 309 (-1.8435e+093)}
; 1.4919198881159285718922546948306262493133544921875p-260 = -1.76755697162511093978309872909449040889739990234375p309 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011111011 #b0111110111101110011101100011011110110101101110111000)))
(assert (= y (fp #b1 #b10100110100 #b1100010001111110100111010001101011110010010101111100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
