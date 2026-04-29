(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2430987734714331605090364973875693976879119873046875p-436 {+ 1094819545620171 -436 (7.00531e-132)}
; Y = -1.0615571579910969557403177532250992953777313232421875p-858 {- 277228793790691 -858 (-5.52341e-259)}
; 1.2430987734714331605090364973875693976879119873046875p-436 > -1.0615571579910969557403177532250992953777313232421875p-858 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001001011 #b0011111000111011101110001010000111000001111011001011)))
(assert (= y (fp #b1 #b00010100101 #b0000111111000010001101011011110001101000000011100011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
