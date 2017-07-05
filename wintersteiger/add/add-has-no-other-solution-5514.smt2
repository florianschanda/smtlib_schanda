(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1792617023085669725190882672904990613460540771484375p-22 {+ 807322935718663 -22 (2.81158e-007)}
; Y = -1.1300907445156715969147853684262372553348541259765625p-449 {- 585876628525129 -449 (-7.77401e-136)}
; 1.1792617023085669725190882672904990613460540771484375p-22 + -1.1300907445156715969147853684262372553348541259765625p-449 == 1.1792617023085669725190882672904990613460540771484375p-22
; [HW: 1.1792617023085669725190882672904990613460540771484375p-22] 

; mpf : + 807322935718663 -22
; mpfd: + 807322935718663 -22 (2.81158e-007) class: Pos. norm. non-zero
; hwf : + 807322935718663 -22 (2.81158e-007) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111101001 #b0010110111100100000110000100110011010111001100000111)))
(assert (= y (fp #b1 #b01000111110 #b0010000101001101101000001000010100110101000001001001)))
(assert (= r (fp #b0 #b01111101001 #b0010110111100100000110000100110011010111001100000111)))
(assert  (not (= (fp.add roundTowardPositive x y) r)))
(check-sat)
(exit)
