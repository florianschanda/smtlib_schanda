(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.322005024526901717507598732481710612773895263671875p-85 {+ 1450181708470782 -85 (3.4173e-026)}
; Y = -1.32856550520252358893458222155459225177764892578125p397 {- 1479727486796884 397 (-4.28836e+119)}
; 1.322005024526901717507598732481710612773895263671875p-85 < -1.32856550520252358893458222155459225177764892578125p397 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110101010 #b0101001001101110111010111101100101111101100111111110)))
(assert (= y (fp #b1 #b10110001100 #b0101010000011100110111100111001101110000010001010100)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
