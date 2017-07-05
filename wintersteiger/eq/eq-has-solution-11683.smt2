(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.98009483613080039532405862701125442981719970703125p-393 {- 4413954738786420 -393 (-9.81517e-119)}
; Y = -1.4260174653744031036950445923139341175556182861328125p-815 {- 1918612098313485 -815 (-6.52647e-246)}
; -1.98009483613080039532405862701125442981719970703125p-393 = -1.4260174653744031036950445923139341175556182861328125p-815 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001110110 #b1111101011100111011111101100010000101001000001110100)))
(assert (= y (fp #b1 #b00011010000 #b0110110100001111011110110000100101001110110100001101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
