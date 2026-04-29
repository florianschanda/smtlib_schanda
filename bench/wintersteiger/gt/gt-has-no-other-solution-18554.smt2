(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.688836113261714455546780300210230052471160888671875p933 {- 3102242063004798 933 (-1.22623e+281)}
; Y = 1.0764162054155008707567731107701547443866729736328125p955 {+ 344147994234317 955 (3.27813e+287)}
; -1.688836113261714455546780300210230052471160888671875p933 > 1.0764162054155008707567731107701547443866729736328125p955 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110100100 #b1011000001010111100100000100001011000011010001111110)))
(assert (= y (fp #b0 #b11110111010 #b0001001110010000000000110010111100100100110111001101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
