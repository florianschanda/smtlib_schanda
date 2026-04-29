(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5788405360990711567836797257768921554088592529296875p509 {- 2606866022682715 509 (-2.6461e+153)}
; Y = 1.944528994584967751535486968350596725940704345703125p-467 {+ 4253780428053490 -467 (5.10278e-141)}
; -1.5788405360990711567836797257768921554088592529296875p509 = 1.944528994584967751535486968350596725940704345703125p-467 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111111100 #b1001010000101110111001001011010000100101000001011011)))
(assert (= y (fp #b0 #b01000101100 #b1111000111001100101001101111010111011101101111110010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
