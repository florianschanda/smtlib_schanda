(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4517612870008373970875936720403842628002166748046875p62 {- 2034551963797387 62 (-6.69507e+018)}
; Y = -1.5528823275379954882424726747558452188968658447265625p845 {- 2489960644279849 845 (-3.64322e+254)}
; -1.4517612870008373970875936720403842628002166748046875p62 > -1.5528823275379954882424726747558452188968658447265625p845 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000111101 #b0111001110100110101000001011000101000100011110001011)))
(assert (= y (fp #b1 #b11101001100 #b1000110110001001101100100011101101001111111000101001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
