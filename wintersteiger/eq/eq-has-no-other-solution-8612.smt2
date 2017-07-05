(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.99362287721763919989825808443129062652587890625p-928 {- 4474879619584160 -928 (-8.78632e-280)}
; Y = -1.4945205425041374613925881931209005415439605712890625p-281 {- 2227122530948689 -281 (-3.84657e-085)}
; -1.99362287721763919989825808443129062652587890625p-928 = -1.4945205425041374613925881931209005415439605712890625p-281 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001011111 #b1111111001011110000100011010001000110101000010100000)))
(assert (= y (fp #b1 #b01011100110 #b0111111010011000111001011111010101000001011001010001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
