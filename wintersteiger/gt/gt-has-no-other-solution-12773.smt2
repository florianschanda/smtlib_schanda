(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.53195593838463128832927395706064999103546142578125p-453 {- 2395716565886548 -453 (-6.58655e-137)}
; Y = 1.3024073381418566075495846234844066202640533447265625p-488 {+ 1361921575369769 -488 (1.6297e-147)}
; -1.53195593838463128832927395706064999103546142578125p-453 > 1.3024073381418566075495846234844066202640533447265625p-488 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000111010 #b1000100000101110010000111010111001000110011001010100)))
(assert (= y (fp #b0 #b01000010111 #b0100110101101010100100010011101101100011110000101001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
