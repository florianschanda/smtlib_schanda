(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7102137012714881958430623853928409516811370849609375p761 {+ 3198518160399695 761 (2.07433e+229)}
; Y = 1.7169063423966577364154773022164590656757354736328125p713 {+ 3228659136477133 713 (7.39833e+214)}
; 1.7102137012714881958430623853928409516811370849609375p761 < 1.7169063423966577364154773022164590656757354736328125p713 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011111000 #b1011010111010000100100001010110000100001110101001111)))
(assert (= y (fp #b0 #b11011001000 #b1011011110000111001011001000111011100011011111001101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
