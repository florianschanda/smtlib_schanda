(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7995735961544898628972077858634293079376220703125p626 {+ 3600959349696648 626 (5.01126e+188)}
; Y = 1.32442003672726205110166119993664324283599853515625p-2 {+ 1461057956516420 -2 (0.331105)}
; 1.7995735961544898628972077858634293079376220703125p626 - 1.32442003672726205110166119993664324283599853515625p-2 == 1.7995735961544898628972077858634293079376220703125p626
; [HW: 1.7995735961544898628972077858634293079376220703125p626] 

; mpf : + 3600959349696648 626
; mpfd: + 3600959349696648 626 (5.01126e+188) class: Pos. norm. non-zero
; hwf : + 3600959349696648 626 (5.01126e+188) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001110001 #b1100110010110000110110101110111000111010100010001000)))
(assert (= y (fp #b0 #b01111111101 #b0101001100001101001100010000011111101001001001000100)))
(assert (= r (fp #b0 #b11001110001 #b1100110010110000110110101110111000111010100010001000)))
(assert (= (fp.sub roundTowardPositive x y) r))
(check-sat)
(exit)
