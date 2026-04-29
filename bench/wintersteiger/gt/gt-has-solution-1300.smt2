(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.585403389591586886808727285824716091156005859375p508 {+ 2636422487226096 508 (1.32855e+153)}
; Y = -1.00487928137682747120607018587179481983184814453125p-616 {- 21974329790516 -616 (-3.69519e-186)}
; 1.585403389591586886808727285824716091156005859375p508 > -1.00487928137682747120607018587179481983184814453125p-616 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111111011 #b1001010111011100111111110001110101000011011011110000)))
(assert (= y (fp #b1 #b00110010111 #b0000000100111111110001001100000111110001000000110100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
