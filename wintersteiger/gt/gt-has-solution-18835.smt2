(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5317091914080187553537371059064753353595733642578125p-463 {+ 2394605316294621 -463 (6.43115e-140)}
; Y = -1.189286312285251501208449553814716637134552001953125p-607 {- 852469765474194 -607 (-2.23913e-183)}
; 1.5317091914080187553537371059064753353595733642578125p-463 > -1.189286312285251501208449553814716637134552001953125p-607 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000110000 #b1000100000011110000101111111010000010100011111011101)))
(assert (= y (fp #b1 #b00110100000 #b0011000001110101000100010101100011011000011110010010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
