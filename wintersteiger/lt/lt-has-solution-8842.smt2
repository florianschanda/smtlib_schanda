(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6514731304844680881416252304916270077228546142578125p-539 {- 2933974147691741 -539 (-9.17707e-163)}
; Y = -1.7535657102191415379621730608050711452960968017578125p-888 {- 3393758251742109 -888 (-8.4974e-268)}
; -1.6514731304844680881416252304916270077228546142578125p-539 < -1.7535657102191415379621730608050711452960968017578125p-888 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111100100 #b1010011011000110111100010110110110100111010011011101)))
(assert (= y (fp #b1 #b00010000111 #b1100000011101001101011101011000011000111001110011101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
