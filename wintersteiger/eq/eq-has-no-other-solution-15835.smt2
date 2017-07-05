(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5656171113013026552351902864756993949413299560546875p-97 {+ 2547313011690923 -97 (9.88043e-030)}
; Y = -1.6465761678557198077754719633958302438259124755859375p87 {- 2911920188621663 87 (-2.54795e+026)}
; 1.5656171113013026552351902864756993949413299560546875p-97 = -1.6465761678557198077754719633958302438259124755859375p87 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110011110 #b1001000011001100010010000111001100011000110110101011)))
(assert (= y (fp #b1 #b10001010110 #b1010010110000110000001000000011101010000001101011111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
