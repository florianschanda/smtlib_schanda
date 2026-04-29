(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.804343677055936456810059098643250763416290283203125p-44 {+ 3622441884266930 -44 (1.02565e-013)}
; Y = 1.89096552048766142206659424118697643280029296875p1019 {+ 4012551986068192 1019 (1.0623e+307)}
; 1.804343677055936456810059098643250763416290283203125p-44 < 1.89096552048766142206659424118697643280029296875p1019 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111010011 #b1100110111101001011101111001101110110011000110110010)))
(assert (= y (fp #b0 #b11111111010 #b1110010000010110010100001111110001011011101011100000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
