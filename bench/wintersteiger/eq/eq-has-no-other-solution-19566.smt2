(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4492407342215829491038903142907656729221343994140625p-199 {- 2023200403239969 -199 (-1.80373e-060)}
; Y = 1.4589830445089955190951513941399753093719482421875p9 {+ 2067075868220088 9 (746.999)}
; -1.4492407342215829491038903142907656729221343994140625p-199 = 1.4589830445089955190951513941399753093719482421875p9 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100111000 #b0111001100000001011100001101010110000011010000100001)))
(assert (= y (fp #b0 #b10000001000 #b0111010101111111111010011010110110010101101010111000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
