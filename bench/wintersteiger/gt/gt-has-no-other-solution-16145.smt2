(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0914060658870068376558037925860844552516937255859375p-737 {+ 411656324268127 -737 (1.50966e-222)}
; Y = -1.215684709415036923729758200352080166339874267578125p632 {- 971357576951074 632 (-2.1666e+190)}
; 1.0914060658870068376558037925860844552516937255859375p-737 > -1.215684709415036923729758200352080166339874267578125p632 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100011110 #b0001011101100110011000110100111110100100000001011111)))
(assert (= y (fp #b1 #b11001110111 #b0011011100110111000111001111010100101111010100100010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
