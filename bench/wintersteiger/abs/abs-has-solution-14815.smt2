(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.40919371528830783546482052770443260669708251953125p-321 {+ 1842844663694772 -321 (3.29869e-097)}
; 1.40919371528830783546482052770443260669708251953125p-321 | == 1.40919371528830783546482052770443260669708251953125p-321
; [HW: 1.40919371528830783546482052770443260669708251953125p-321] 

; mpf : + 1842844663694772 -321
; mpfd: + 1842844663694772 -321 (3.29869e-097) class: Pos. norm. non-zero
; hwf : + 1842844663694772 -321 (3.29869e-097) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010111110 #b0110100011000000111010110101100011100100010110110100)))
(assert (= r (fp #b0 #b01010111110 #b0110100011000000111010110101100011100100010110110100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
