(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9829687026081648237862964379019103944301605224609375p-974 {+ 4426897482782991 -974 (1.24194e-293)}
; Y = 1.4968241327217040037567130639217793941497802734375p262 {+ 2237496978994136 262 (1.10925e+079)}
; 1.9829687026081648237862964379019103944301605224609375p-974 < 1.4968241327217040037567130639217793941497802734375p262 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000110001 #b1111101110100011110101100011111010110001100100001111)))
(assert (= y (fp #b0 #b10100000101 #b0111111100101111110111011100100111100111001111011000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
