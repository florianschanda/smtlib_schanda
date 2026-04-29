(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.295077774027984407467783967149443924427032470703125p745 {+ 1328912153157746 745 (2.39686e+224)}
; Y = 1.9857558170943059305812994352891109883785247802734375p-464 {+ 4439449530544215 -464 (4.16877e-140)}
; 1.295077774027984407467783967149443924427032470703125p745 = 1.9857558170943059305812994352891109883785247802734375p-464 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011101000 #b0100101110001010001101111000110100111010000001110010)))
(assert (= y (fp #b0 #b01000101111 #b1111110001011010011111100100010001000011000001010111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
