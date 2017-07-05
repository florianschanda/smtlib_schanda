(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.16025735946873975734661144088022410869598388671875p-840 {- 721734984386796 -840 (-1.58255e-253)}
; Y = -1.8508388737573462368146692824666388332843780517578125p-980 {- 3831837634805917 -980 (-1.81123e-295)}
; -1.16025735946873975734661144088022410869598388671875p-840 < -1.8508388737573462368146692824666388332843780517578125p-980 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010110111 #b0010100100000110101000000101010111011100100011101100)))
(assert (= y (fp #b1 #b00000101011 #b1101100111010000100100111001000011110100000010011101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
