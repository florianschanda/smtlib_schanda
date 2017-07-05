(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.616364508354291462666196821373887360095977783203125p604 {- 2775858970148786 604 (-1.07314e+182)}
; Y = 1.3744700652428789577896850460092537105083465576171875p-429 {+ 1686463246289235 -429 (9.91442e-130)}
; -1.616364508354291462666196821373887360095977783203125p604 < 1.3744700652428789577896850460092537105083465576171875p-429 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001011011 #b1001110111001010000100000111110111001011111110110010)))
(assert (= y (fp #b0 #b01001010010 #b0101111111011101010001010010101110001100100101010011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
