(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5318794880355779408631633486947976052761077880859375p-177 {- 2395372264123039 -177 (-7.99678e-054)}
; Y = 1.497759930892687663117612828500568866729736328125p101 {+ 2241711439288272 101 (3.79727e+030)}
; -1.5318794880355779408631633486947976052761077880859375p-177 > 1.497759930892687663117612828500568866729736328125p101 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101001110 #b1000100000101001010000010000111010000110101010011111)))
(assert (= y (fp #b0 #b10001100100 #b0111111101101101001100011110000001110001011111010000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
