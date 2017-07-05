(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8731427797249555755598748874035663902759552001953125p-812 {- 3932285497410549 -812 (-6.85827e-245)}
; Y = -1.778680617217208048685961330193094909191131591796875p-813 {- 3506865737540046 -813 (-3.2562e-245)}
; -1.8731427797249555755598748874035663902759552001953125p-812 = -1.778680617217208048685961330193094909191131591796875p-813 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011010011 #b1101111110000110010010010000001110101000001111110101)))
(assert (= y (fp #b1 #b00011010010 #b1100011101010111100111001110100011111010000111001110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
