(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9600618434362078179589161663898266851902008056640625p-273 {- 4323734160351937 -273 (-1.29146e-082)}
; Y = 1.9237322539843788593572071476955898106098175048828125p958 {+ 4160120234834157 958 (4.68684e+288)}
; -1.9600618434362078179589161663898266851902008056640625p-273 > 1.9237322539843788593572071476955898106098175048828125p958 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011101110 #b1111010111000110100111001110101110110010001011000001)))
(assert (= y (fp #b0 #b11110111101 #b1110110001111001101101111000110100011111100011101101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
