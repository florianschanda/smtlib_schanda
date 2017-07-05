(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.526796786320054888363983991439454257488250732421875p-40 {- 2372481810570974 -40 (-1.38861e-012)}
; Y = 1.6955810891081182223416590204578824341297149658203125p-18 {+ 3132618733713285 -18 (6.46813e-006)}
; -1.526796786320054888363983991439454257488250732421875p-40 > 1.6955810891081182223416590204578824341297149658203125p-18 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111010111 #b1000011011011100001001110111100011100001111011011110)))
(assert (= y (fp #b0 #b01111101101 #b1011001000010001100110100010110101101111011110000101)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
