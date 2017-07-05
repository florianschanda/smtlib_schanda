(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.20773739374575228566754958592355251312255859375p286 {+ 935566049064288 286 (1.50159e+086)}
; Y = -1.945168268681893852800612876308150589466094970703125p-594 {- 4256659462638194 -594 (-3.00013e-179)}
; 1.20773739374575228566754958592355251312255859375p286 < -1.945168268681893852800612876308150589466094970703125p-594 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100011101 #b0011010100101110010001110010000001001011010101100000)))
(assert (= y (fp #b1 #b00110101101 #b1111000111110110100011000011001100110100101001110010)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
