(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.241007951907571627003790126764215528964996337890625p-216 {+ 1085403322404266 -216 (1.17841e-065)}
; Y = 1.7742953614748795398980973914149217307567596435546875p-26 {+ 3487116301412971 -26 (2.64391e-008)}
; 1.241007951907571627003790126764215528964996337890625p-216 < 1.7742953614748795398980973914149217307567596435546875p-26 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100100111 #b0011110110110010101100100111011110000100110110101010)))
(assert (= y (fp #b0 #b01111100101 #b1100011000111000001110001000011011111010101001101011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
