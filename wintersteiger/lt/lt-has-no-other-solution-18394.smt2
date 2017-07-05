(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5771391557913911896093850373290479183197021484375p110 {+ 2599203686963032 110 (2.04724e+033)}
; Y = -1.5988210972685354960276526981033384799957275390625p-119 {- 2696850470520168 -119 (-2.40564e-036)}
; 1.5771391557913911896093850373290479183197021484375p110 < -1.5988210972685354960276526981033384799957275390625p-119 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001101101 #b1001001110111111011001000100011101011101011101011000)))
(assert (= y (fp #b1 #b01110001000 #b1001100101001100010101101110010011101100010101101000)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
