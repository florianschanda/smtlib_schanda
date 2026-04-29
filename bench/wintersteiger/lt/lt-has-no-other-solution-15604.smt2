(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0298150819003117906191846486763097345829010009765625p-708 {+ 134275191736265 -708 (7.64755e-214)}
; Y = -1.9228978929836288980226299827336333692073822021484375p19 {- 4156362606942087 19 (-1.00815e+006)}
; 1.0298150819003117906191846486763097345829010009765625p-708 < -1.9228978929836288980226299827336333692073822021484375p19 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100111011 #b0000011110100001111101100001000110110000011111001001)))
(assert (= y (fp #b1 #b10000010010 #b1110110001000011000010010100101111101001011110000111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
