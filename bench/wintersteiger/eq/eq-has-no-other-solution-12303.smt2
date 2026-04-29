(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6746763160325308650300257795606739819049835205078125p565 {- 3038472005479805 565 (-2.02245e+170)}
; Y = -1.1264447350618074228378873158362694084644317626953125p-920 {- 569456461707317 -920 (-1.27091e-277)}
; -1.6746763160325308650300257795606739819049835205078125p565 = -1.1264447350618074228378873158362694084644317626953125p-920 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000110100 #b1010110010110111100101100100100010111110110101111101)))
(assert (= y (fp #b1 #b00001100111 #b0010000001011110101011101010000111010111100000110101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
