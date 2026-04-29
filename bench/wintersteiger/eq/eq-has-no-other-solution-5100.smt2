(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5304770926935109542910140589810907840728759765625p371 {- 2389056436983080 371 (-7.36131e+111)}
; Y = -1.144825793730239293921613352722488343715667724609375p-280 {- 652237390677142 -280 (-5.89306e-085)}
; -1.5304770926935109542910140589810907840728759765625p371 = -1.144825793730239293921613352722488343715667724609375p-280 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101110010 #b1000011111001101010110001100010001100101010100101000)))
(assert (= y (fp #b1 #b01011100111 #b0010010100010011010011011001111110110000010010010110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
