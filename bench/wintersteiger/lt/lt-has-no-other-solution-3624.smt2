(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1403538971872186902345447379047982394695281982421875p-478 {+ 632097759072355 -478 (1.46117e-144)}
; Y = 1.68127322179083993347603609436191618442535400390625p-873 {+ 3068181827794724 -873 (2.66964e-263)}
; 1.1403538971872186902345447379047982394695281982421875p-478 < 1.68127322179083993347603609436191618442535400390625p-873 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000100001 #b0010001111101110001110111010011001001001000001100011)))
(assert (= y (fp #b0 #b00010010110 #b1010111001100111111010111111111100111011011100100100)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
