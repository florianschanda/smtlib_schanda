(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -0.128168551876204350747912030783481895923614501953125p-1022 {- 577219842470290 -1023 (-2.85184e-309)}
; Y = -1.39909904958470665548020406276918947696685791015625p-161 {- 1797382330993604 -161 (-4.78651e-049)}
; -0.128168551876204350747912030783481895923614501953125p-1022 > -1.39909904958470665548020406276918947696685791015625p-161 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0010000011001111101001110111101010101111000110010010)))
(assert (= y (fp #b1 #b01101011110 #b0110011000101011010110101111010111010100101111000100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
