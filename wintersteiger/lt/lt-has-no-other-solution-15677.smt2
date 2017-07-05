(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7707160869844795758609734548372216522693634033203125p-40 {- 3470996682151749 -40 (-1.61046e-012)}
; Y = -1.255637566872362054226641703280620276927947998046875p-733 {- 1151289250908270 -733 (-2.77893e-221)}
; -1.7707160869844795758609734548372216522693634033203125p-40 < -1.255637566872362054226641703280620276927947998046875p-733 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111010111 #b1100010101001101101001100100010000011001011101000101)))
(assert (= y (fp #b1 #b00100100010 #b0100000101110001011101101010110101011000100001101110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
