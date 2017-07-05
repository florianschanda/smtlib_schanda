(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3606757784462548688253491491195745766162872314453125p170 {+ 1624339301412117 170 (2.03636e+051)}
; Y = -1.433954479103782819748857946251519024372100830078125p-475 {- 1954357230387554 -475 (-1.4699e-143)}
; 1.3606757784462548688253491491195745766162872314453125p170 = -1.433954479103782819748857946251519024372100830078125p-475 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010101001 #b0101110001010101001111110111000011100010110100010101)))
(assert (= y (fp #b1 #b01000100100 #b0110111100010111101001000000011110110100000101100010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
