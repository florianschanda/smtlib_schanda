(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.485614965440720691702836120384745299816131591796875p197 {+ 2187015377404366 197 (2.98411e+059)}
; Y = 1.85434797491243497091772951534949243068695068359375p-495 {+ 3847641221460380 -495 (1.81277e-149)}
; 1.485614965440720691702836120384745299816131591796875p197 < 1.85434797491243497091772951534949243068695068359375p-495 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011000100 #b0111110001010001010000110010101100000100000111001110)))
(assert (= y (fp #b0 #b01000010000 #b1101101010110110100011001000001110100111000110011100)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
