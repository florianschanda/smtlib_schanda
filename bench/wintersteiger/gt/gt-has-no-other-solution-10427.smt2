(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6623606964900348170743882292299531400203704833984375p-465 {- 2983007385897383 -465 (-1.74493e-140)}
; Y = 1.2662924663527916901983871866832487285137176513671875p-826 {+ 1199274652238003 -826 (2.82981e-249)}
; -1.6623606964900348170743882292299531400203704833984375p-465 > 1.2662924663527916901983871866832487285137176513671875p-826 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000101110 #b1010100110010000011110000111100110010100100110100111)))
(assert (= y (fp #b0 #b00011000101 #b0100010000101011101111100011101000101000000010110011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
