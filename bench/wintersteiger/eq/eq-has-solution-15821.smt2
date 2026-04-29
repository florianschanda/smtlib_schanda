(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0299388894417227380273516246234066784381866455078125p519 {+ 134832771333629 519 (1.76758e+156)}
; Y = 1.99809734034583730277745416969992220401763916015625p739 {+ 4495030810060996 739 (5.77808e+222)}
; 1.0299388894417227380273516246234066784381866455078125p519 = 1.99809734034583730277745416969992220401763916015625p739 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000000110 #b0000011110101010000100110011011100000111110111111101)))
(assert (= y (fp #b0 #b11011100010 #b1111111110000011010011101010101100000010100011000100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
