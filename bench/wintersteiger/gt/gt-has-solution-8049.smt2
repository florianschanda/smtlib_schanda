(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.486609975068331035430446718237362802028656005859375p-497 {- 2191496502392502 -497 (-3.6332e-150)}
; Y = -1.2221036413132468911868500072159804403781890869140625p-793 {- 1000265876255969 -793 (-2.34596e-239)}
; -1.486609975068331035430446718237362802028656005859375p-497 > -1.2221036413132468911868500072159804403781890869140625p-793 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000001110 #b0111110010010010011110001010100011010011011010110110)))
(assert (= y (fp #b1 #b00011100110 #b0011100011011011110010001100001111000011010011100001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
