(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3496288052838159021717956420616246759891510009765625p-214 {- 1574588157194185 -214 (-5.1262e-065)}
; Y = -1.9094102122375302688084275359869934618473052978515625p817 {- 4095619492959865 817 (-1.66881e+246)}
; -1.3496288052838159021717956420616246759891510009765625p-214 = -1.9094102122375302688084275359869934618473052978515625p817 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100101001 #b0101100110000001010001011111110001101110111111001001)))
(assert (= y (fp #b1 #b11100110000 #b1110100011001111000110111001000000110101011001111001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
