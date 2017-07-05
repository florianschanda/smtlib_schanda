(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5083303263956227002751120380708016455173492431640625p1 {- 2289316268536449 1 (-3.01666)}
; Y = 1.2589582339868876648125706196879036724567413330078125p948 {+ 1166244206087869 948 (2.99535e+285)}
; -1.5083303263956227002751120380708016455173492431640625p1 M 1.2589582339868876648125706196879036724567413330078125p948 == 1.2589582339868876648125706196879036724567413330078125p948
; [HW: 1.2589582339868876648125706196879036724567413330078125p948] 

; mpf : + 1166244206087869 948
; mpfd: + 1166244206087869 948 (2.99535e+285) class: Pos. norm. non-zero
; hwf : + 1166244206087869 948 (2.99535e+285) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000000000 #b1000001000100001111011111010111101101111001010000001)))
(assert (= y (fp #b0 #b11110110011 #b0100001001001011000101100011101000000000111010111101)))
(assert (= r (fp #b0 #b11110110011 #b0100001001001011000101100011101000000000111010111101)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
