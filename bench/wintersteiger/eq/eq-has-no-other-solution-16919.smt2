(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2535286690170526213705670670606195926666259765625p904 {- 1141791619312936 904 (-1.69531e+272)}
; Y = 1.1394199303106706810950754515943117439746856689453125p396 {+ 627891546195157 396 (1.83892e+119)}
; -1.2535286690170526213705670670606195926666259765625p904 = 1.1394199303106706810950754515943117439746856689453125p396 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110000111 #b0100000011100111010000010011111000000110110100101000)))
(assert (= y (fp #b0 #b10110001011 #b0010001110110001000001100100100100011000010011010101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
