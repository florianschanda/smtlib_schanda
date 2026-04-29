(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0625092250336560795176410465501248836517333984375p942 {- 281516522568792 942 (-3.94992e+283)}
; Y = -1.4359291433148542171949202383984811604022979736328125p-318 {- 1963250327392717 -318 (-2.68902e-096)}
; -1.0625092250336560795176410465501248836517333984375p942 < -1.4359291433148542171949202383984811604022979736328125p-318 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110101101 #b0001000000000000100110101100010100110111110001011000)))
(assert (= y (fp #b1 #b01011000001 #b0110111110011001000011010110010111101001000111001101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
