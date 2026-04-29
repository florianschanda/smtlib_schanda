(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.636586791720211930822870272095315158367156982421875p401 {- 2866932037980126 401 (-8.45215e+120)}
; Y = -1.7151128628894485306233264054753817617893218994140625p152 {- 3220582022836769 152 (-9.79156e+045)}
; -1.636586791720211930822870272095315158367156982421875p401 > -1.7151128628894485306233264054753817617893218994140625p152 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110010000 #b1010001011110111010110100001101110000000111111011110)))
(assert (= y (fp #b1 #b10010010111 #b1011011100010001101000101111011100001111001000100001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
