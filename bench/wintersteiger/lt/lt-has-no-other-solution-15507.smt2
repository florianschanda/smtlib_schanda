(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4350881079586301769523970506270416080951690673828125p-879 {- 1959462640875821 -879 (-3.56051e-265)}
; Y = -1.7602921427594966363727735370048321783542633056640625p-854 {- 3424051410824385 -854 (-1.46544e-257)}
; -1.4350881079586301769523970506270416080951690673828125p-879 < -1.7602921427594966363727735370048321783542633056640625p-854 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010010000 #b0110111101100001111011110010101010001111100100101101)))
(assert (= y (fp #b1 #b00010101001 #b1100001010100010100000011000000010001110110011000001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
