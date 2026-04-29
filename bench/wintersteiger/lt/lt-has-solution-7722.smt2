(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5922106627581238402768804007791914045810699462890625p-494 {- 2667079720122321 -494 (-3.11303e-149)}
; Y = -1.699607077609296634790325697395019233226776123046875p74 {- 3150750174026990 74 (-3.21047e+022)}
; -1.5922106627581238402768804007791914045810699462890625p-494 < -1.699607077609296634790325697395019233226776123046875p74 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000010001 #b1001011110011011000111100011010011100011011111010001)))
(assert (= y (fp #b1 #b10001001001 #b1011001100011001011100110000111001100001110011101110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
