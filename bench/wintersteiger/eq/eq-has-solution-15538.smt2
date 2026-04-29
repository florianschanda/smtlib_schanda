(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4114151280648628006275657753576524555683135986328125p-437 {- 1852849017447501 -437 (-3.97692e-132)}
; Y = 1.2153420974620734451576709034270606935024261474609375p849 {+ 969814589887375 849 (4.5621e+255)}
; -1.4114151280648628006275657753576524555683135986328125p-437 = 1.2153420974620734451576709034270606935024261474609375p849 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001001010 #b0110100101010010100000000111100000011110010001001101)))
(assert (= y (fp #b0 #b11101010000 #b0011011100100000101010001110001000001101001110001111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
