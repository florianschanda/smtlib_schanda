(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0528528206250740151261879873345606029033660888671875p-139 {- 238027943272563 -139 (-1.51077e-042)}
; Y = -1.4113355886895675439518527127802371978759765625p-79 {- 1852490803946560 -79 (-2.33486e-024)}
; -1.0528528206250740151261879873345606029033660888671875p-139 > -1.4113355886895675439518527127802371978759765625p-79 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101110100 #b0000110110000111110000110011000000010110000001110011)))
(assert (= y (fp #b1 #b01110110000 #b0110100101001101010010100000010100011010010001000000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
