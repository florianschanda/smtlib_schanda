(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9964260938308691084586143915657885372638702392578125p-264 {+ 4487504184878941 -264 (6.73495e-080)}
; Y = 1.6161736188576838468833329898188821971416473388671875p-361 {+ 2774999280282995 -361 (3.4408e-109)}
; 1.9964260938308691084586143915657885372638702392578125p-264 < 1.6161736188576838468833329898188821971416473388671875p-361 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011110111 #b1111111100010101110001111100110111100010011101011101)))
(assert (= y (fp #b0 #b01010010110 #b1001110110111101100011011110010110100110110101110011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
