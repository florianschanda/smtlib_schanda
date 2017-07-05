(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.942375551167706770883114586467854678630828857421875p-864 {- 4244082181081950 -864 (-1.57913e-260)}
; Y = -1.8743723726858110278925551028805784881114959716796875p634 {- 3937823091810875 634 (-1.33621e+191)}
; -1.942375551167706770883114586467854678630828857421875p-864 > -1.8743723726858110278925551028805784881114959716796875p634 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010011111 #b1111000100111111100001100010110011010000101101011110)))
(assert (= y (fp #b1 #b11001111001 #b1101111111010110110111100010100100110110001000111011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
