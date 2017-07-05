(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.634872710003999696226628657313995063304901123046875p487 {+ 2859212500201710 487 (6.53269e+146)}
; Y = 1.3956674106942805746456315318937413394451141357421875p667 {+ 1781927603365411 667 (8.54651e+200)}
; 1.634872710003999696226628657313995063304901123046875p487 = 1.3956674106942805746456315318937413394451141357421875p667 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111100110 #b1010001010000111000001001001011010010111000011101110)))
(assert (= y (fp #b0 #b11010011010 #b0110010101001010011101011001110100000110011000100011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
