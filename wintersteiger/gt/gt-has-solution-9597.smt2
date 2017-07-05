(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.764179276984477962031405695597641170024871826171875p-922 {- 3441557507071550 -922 (-4.97607e-278)}
; Y = -1.39447234682944287698092011851258575916290283203125p-120 {- 1776545514189044 -120 (-1.04908e-036)}
; -1.764179276984477962031405695597641170024871826171875p-922 > -1.39447234682944287698092011851258575916290283203125p-120 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001100101 #b1100001110100001010000001100101011101101111000111110)))
(assert (= y (fp #b1 #b01110000111 #b0110010011111100001000111100010011001111000011110100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
