(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9812486020759629834486759136780165135860443115234375p624 {+ 4419150838667127 624 (1.37929e+188)}
; Y = -1.3985764758082115388759802954155020415782928466796875p260 {- 1795028867928507 260 (-2.59111e+078)}
; 1.9812486020759629834486759136780165135860443115234375p624 > -1.3985764758082115388759802954155020415782928466796875p260 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001101111 #b1111101100110011000110111011111100101001011101110111)))
(assert (= y (fp #b1 #b10100000011 #b0110011000001001000110111010000010001101000110111011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
