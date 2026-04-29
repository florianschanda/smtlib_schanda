(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9957155879175558776950083483825437724590301513671875p-372 {- 4484304350712499 -372 (-2.07463e-112)}
; Y = -1.986357986695918231845325863105244934558868408203125p202 {- 4442161461337650 202 (-1.27678e+061)}
; -1.9957155879175558776950083483825437724590301513671875p-372 < -1.986357986695918231845325863105244934558868408203125p202 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010001011 #b1111111011100111001101110111111000111001001010110011)))
(assert (= y (fp #b1 #b10011001001 #b1111110010000001111101001111111100000001111000110010)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
