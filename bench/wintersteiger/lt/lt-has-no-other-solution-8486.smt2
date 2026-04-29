(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4286088062969335421570349353714846074581146240234375p138 {- 1930282460326583 138 (-4.97798e+041)}
; Y = 1.809943518067884671296496890136040747165679931640625p163 {+ 3647661326161674 163 (2.11619e+049)}
; -1.4286088062969335421570349353714846074581146240234375p138 < 1.809943518067884671296496890136040747165679931640625p163 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010001001 #b0110110110111001010011101000010111010010101010110111)))
(assert (= y (fp #b0 #b10010100010 #b1100111101011000011101010101100110110101011100001010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
