(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2744941796115651921894595943740569055080413818359375p518 {- 1236211885014015 518 (-1.09364e+156)}
; Y = 0.7616425593733049392852763048722408711910247802734375p-1022 {+ 3430133146583127 -1023 (1.69471e-308)}
; -1.2744941796115651921894595943740569055080413818359375p518 < 0.7616425593733049392852763048722408711910247802734375p-1022 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000000101 #b0100011001000101010000000010010001011111101111111111)))
(assert (= y (fp #b0 #b00000000000 #b1100001011111011000000011011101111000000000001010111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
