(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7320985059398956718013096178765408694744110107421875p-669 {+ 3297078558549411 -669 (7.0714e-202)}
; Y = -0.601706723959221978503819627803750336170196533203125p-1022 {- 2709846177809074 -1023 (-1.33884e-308)}
; 1.7320985059398956718013096178765408694744110107421875p-669 = -0.601706723959221978503819627803750336170196533203125p-1022 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101100010 #b1011101101101010110011101100010001110110010110100011)))
(assert (= y (fp #b1 #b00000000000 #b1001101000001001011100111010110100110000001010110010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
