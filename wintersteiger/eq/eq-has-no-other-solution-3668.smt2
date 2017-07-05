(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.060432029842953038922814812394790351390838623046875p-146 {- 272161667081966 -146 (-1.18879e-044)}
; Y = 1.522784304052989146072150106192566454410552978515625p-978 {+ 2354411196928186 -978 (5.96077e-295)}
; -1.060432029842953038922814812394790351390838623046875p-146 = 1.522784304052989146072150106192566454410552978515625p-978 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101101101 #b0000111101111000011110010011011111001110011011101110)))
(assert (= y (fp #b0 #b00000101101 #b1000010111010101001100010011000011000101000010111010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
