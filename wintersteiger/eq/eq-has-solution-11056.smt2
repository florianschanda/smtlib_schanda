(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = -1.5863338489763003646970673798932693898677825927734375p885 {- 2640612903764375 885 (-4.09205e+266)}
; -zero = -1.5863338489763003646970673798932693898677825927734375p885 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b11101110100 #b1001011000011001111110011010000111100100000110010111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
