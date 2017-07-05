(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0824056285725982551326751490705646574497222900390625p586 {- 371121958132785 586 (-2.74137e+176)}
; Y = 1.424522641088993513136529145413078367710113525390625p-124 {+ 1911880008218730 -124 (6.69807e-038)}
; -1.0824056285725982551326751490705646574497222900390625p586 = 1.424522641088993513136529145413078367710113525390625p-124 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001001001 #b0001010100011000100010010000011110111001110000110001)))
(assert (= y (fp #b0 #b01110000011 #b0110110010101101100001000000101111100011100001101010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
