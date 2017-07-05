(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0944572750897056945262875160551629960536956787109375p-35 {+ 425397748896431 -35 (3.18529e-011)}
; Y = -1.9006808722950072620960781932808458805084228515625p-219 {- 4056306040847528 -219 (-2.25601e-066)}
; 1.0944572750897056945262875160551629960536956787109375p-35 > -1.9006808722950072620960781932808458805084228515625p-219 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111011100 #b0001100000101110010110100001101101100001001010101111)))
(assert (= y (fp #b1 #b01100100100 #b1110011010010011000001011000101010100011110010101000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
