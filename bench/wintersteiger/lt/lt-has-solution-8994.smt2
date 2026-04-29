(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.231610270553102015611557362717576324939727783203125p-250 {- 1043079928158130 -250 (-6.80729e-076)}
; Y = -1.6233220190145740691178843917441554367542266845703125p-682 {- 2807192812565861 -682 (-8.08998e-206)}
; -1.231610270553102015611557362717576324939727783203125p-250 < -1.6233220190145740691178843917441554367542266845703125p-682 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100000101 #b0011101101001010110011111000100101110001011110110010)))
(assert (= y (fp #b1 #b00101010101 #b1001111110010010000010000010011010001011010101100101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
