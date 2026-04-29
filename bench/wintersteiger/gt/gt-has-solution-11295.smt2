(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0432722570181287569113237623241730034351348876953125p-127 {- 194880920582325 -127 (-6.1318e-039)}
; Y = 1.9792673963711908680096485113608650863170623779296875p-898 {+ 4410228281393371 -898 (9.36631e-271)}
; -1.0432722570181287569113237623241730034351348876953125p-127 > 1.9792673963711908680096485113608650863170623779296875p-898 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110000000 #b0000101100010011111001000000000010110111100010110101)))
(assert (= y (fp #b0 #b00001111101 #b1111101010110001010001001010000101110100000011011011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
