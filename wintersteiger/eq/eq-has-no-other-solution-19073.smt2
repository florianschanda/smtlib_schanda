(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.085139777641772607097436775802634656429290771484375p809 {- 383435470861894 809 (-3.70469e+243)}
; Y = 1.6922341578956121566079673357307910919189453125p235 {+ 3117545495551808 235 (9.3435e+070)}
; -1.085139777641772607097436775802634656429290771484375p809 = 1.6922341578956121566079673357307910919189453125p235 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100101000 #b0001010111001011101110000111000010001111011001000110)))
(assert (= y (fp #b0 #b10011101010 #b1011000100110110010000011111110101010101111101000000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
