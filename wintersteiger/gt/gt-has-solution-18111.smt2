(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.774429205661630870594080988666974008083343505859375p-67 {- 3487719082042550 -67 (-1.2024e-020)}
; Y = -1.06833214750478067145422755856998264789581298828125p98 {- 307740634039956 98 (-3.38568e+029)}
; -1.774429205661630870594080988666974008083343505859375p-67 > -1.06833214750478067145422755856998264789581298828125p98 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110111100 #b1100011001000000111111100000111101100010010010110110)))
(assert (= y (fp #b1 #b10001100001 #b0001000101111110001101110011001011001100011010010100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
