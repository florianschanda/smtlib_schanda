(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9442893776310457010225718477158807218074798583984375p14 {- 4252701289229095 14 (-31855.2)}
; Y = 1.1323004963361069652449941713712178170680999755859375p709 {+ 595828466000223 709 (3.0495e+213)}
; -1.9442893776310457010225718477158807218074798583984375p14 < 1.1323004963361069652449941713712178170680999755859375p709 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000001101 #b1111000110111100111100101101101011100010101100100111)))
(assert (= y (fp #b0 #b11011000100 #b0010000111011110011100100000000100000010000101011111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
