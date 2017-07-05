(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8666433458789641885999799342243932187557220458984375p369 {- 3903014649563623 369 (-2.24455e+111)}
; Y = -1.9818870571535651681216450015199370682239532470703125p809 {- 4422026184716709 809 (-6.76621e+243)}
; -1.8666433458789641885999799342243932187557220458984375p369 > -1.9818870571535651681216450015199370682239532470703125p809 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101110000 #b1101110111011100010101101001101111011000100111100111)))
(assert (= y (fp #b1 #b11100101000 #b1111101101011100111100110011111011010111000110100101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
