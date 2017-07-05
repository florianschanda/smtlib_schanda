(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0621288593840529923539861556491814553737640380859375p-537 {+ 279803507970975 -537 (2.36086e-162)}
; Y = -1.4696730463502818420096218687831424176692962646484375p547 {- 2115219356529095 547 (-6.77062e+164)}
; 1.0621288593840529923539861556491814553737640380859375p-537 > -1.4696730463502818420096218687831424176692962646484375p547 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111100110 #b0000111111100111101011010100101100110001001110011111)))
(assert (= y (fp #b1 #b11000100010 #b0111100000111100011111100010010111100011000111000111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
