(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.553854748752792058752447701408527791500091552734375p589 {+ 2494340040100454 589 (3.14831e+177)}
; Y = 1.7421565703990655737953829884645529091358184814453125p-329 {+ 3342376053899797 -329 (1.59301e-099)}
; 1.553854748752792058752447701408527791500091552734375p589 > 1.7421565703990655737953829884645529091358184814453125p-329 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001001100 #b1000110111001001011011001100000010100000101001100110)))
(assert (= y (fp #b0 #b01010110110 #b1011110111111101111110010001011001100000001000010101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
