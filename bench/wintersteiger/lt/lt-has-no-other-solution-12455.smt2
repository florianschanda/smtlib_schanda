(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.35077202898118553520134810241870582103729248046875p444 {- 1579736779011660 444 (-6.13621e+133)}
; Y = 1.0996589163584780113325223283027298748493194580078125p-331 {+ 448823858576189 -331 (2.51379e-100)}
; -1.35077202898118553520134810241870582103729248046875p444 < 1.0996589163584780113325223283027298748493194580078125p-331 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110111011 #b0101100111001100001100100001100011010011011001001100)))
(assert (= y (fp #b0 #b01010110100 #b0001100110000011001111110010101010000011101100111101)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
