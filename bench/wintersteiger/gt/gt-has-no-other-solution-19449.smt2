(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -0.117311593617714482462588421185500919818878173828125p-1022 {- 528324449302978 -1023 (-2.61027e-309)}
; Y = -1.245060287976146984334491207846440374851226806640625p690 {- 1103653421612682 690 (-6.39569e+207)}
; -0.117311593617714482462588421185500919818878173828125p-1022 > -1.245060287976146984334491207846440374851226806640625p690 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0001111000001000001000011111001000000111100111000010)))
(assert (= y (fp #b1 #b11010110001 #b0011111010111100010001010110001001100111111010001010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
