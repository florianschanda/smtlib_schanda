(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.14968516425458933127856653300113976001739501953125p-667 {- 674122049959860 -667 (-1.87746e-201)}
; Y = -1.8071237230459862299625228843069635331630706787109375p-705 {- 3634962098351791 -705 (-1.0736e-212)}
; -1.14968516425458933127856653300113976001739501953125p-667 < -1.8071237230459862299625228843069635331630706787109375p-705 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101100100 #b0010011001010001110001000101010100101011011110110100)))
(assert (= y (fp #b1 #b00100111110 #b1100111010011111101010010000101001001110111010101111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
