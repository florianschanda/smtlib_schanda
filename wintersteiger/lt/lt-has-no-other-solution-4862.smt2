(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.97226092250165851993415344622917473316192626953125p248 {+ 4378673928285364 248 (8.92079e+074)}
; Y = -1.868578284169681413828811855637468397617340087890625p885 {- 3911728836928682 885 (-4.82012e+266)}
; 1.97226092250165851993415344622917473316192626953125p248 < -1.868578284169681413828811855637468397617340087890625p885 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011110111 #b1111100011100110000101111000000101010010110010110100)))
(assert (= y (fp #b1 #b11101110100 #b1101111001011011001001010111110010000110010010101010)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
