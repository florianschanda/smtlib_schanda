(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9236020273112581779884067145758308470249176025390625p720 {- 4159533746037617 720 (-1.06099e+217)}
; Y = -1.530126848844646669789426596253179013729095458984375p-992 {- 2387479078915846 -992 (-3.65571e-299)}
; -1.9236020273112581779884067145758308470249176025390625p720 > -1.530126848844646669789426596253179013729095458984375p-992 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011001111 #b1110110001110001001011101011010111010010001101110001)))
(assert (= y (fp #b1 #b00000011111 #b1000011110110110011001001010011010000100111100000110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
