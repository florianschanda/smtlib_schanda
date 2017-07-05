(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1094475539806671893217071556136943399906158447265625p-798 {+ 492907963323945 -798 (6.65534e-241)}
; Y = 1.4393397625715473875374073031707666814327239990234375p-679 {+ 1978610391006263 -679 (5.73847e-205)}
; 1.1094475539806671893217071556136943399906158447265625p-798 < 1.4393397625715473875374073031707666814327239990234375p-679 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011100001 #b0001110000000100110000010100000011111001011000101001)))
(assert (= y (fp #b0 #b00101011000 #b0111000001111000100100100001100000010011110000110111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
