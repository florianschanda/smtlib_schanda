(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.801189946526545071492364513687789440155029296875p-399 {+ 3608238744629936 -399 (1.39505e-120)}
; Y = 1.7376032237007488223667905913316644728183746337890625p543 {+ 3321869603405969 543 (5.00309e+163)}
; 1.801189946526545071492364513687789440155029296875p-399 = 1.7376032237007488223667905913316644728183746337890625p543 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001110000 #b1100110100011010110010001100101000110111001010110000)))
(assert (= y (fp #b0 #b11000011110 #b1011110011010011100100001001101100111000000010010001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
