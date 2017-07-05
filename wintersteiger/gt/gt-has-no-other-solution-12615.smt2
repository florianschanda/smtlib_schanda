(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.912812168497021847457517651491798460483551025390625p594 {+ 4110940541902442 594 (1.24019e+179)}
; Y = 1.67643713651969950007014631410129368305206298828125p891 {+ 3046402035969684 891 (2.76766e+268)}
; 1.912812168497021847457517651491798460483551025390625p594 > 1.67643713651969950007014631410129368305206298828125p891 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001010001 #b1110100110101110000011101110101100010101111001101010)))
(assert (= y (fp #b0 #b11101111010 #b1010110100101010111110111111001100100110111010010100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
