(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8990194694173807565817924114526249468326568603515625p-908 {+ 4048823747466937 -908 (8.77593e-274)}
; Y = 1.063930026065833533976956459810025990009307861328125p-48 {+ 287915241567874 -48 (3.77984e-015)}
; 1.8990194694173807565817924114526249468326568603515625p-908 = 1.063930026065833533976956459810025990009307861328125p-48 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001110011 #b1110011000100110001000111101001110011101011010111001)))
(assert (= y (fp #b0 #b01111001111 #b0001000001011101101101111101101100101111011010000010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
