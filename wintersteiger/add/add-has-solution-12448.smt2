(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0901643426221927501984509945032186806201934814453125p836 {- 406064099835413 836 (-4.99538e+251)}
; Y = -1.6346938182779309212122598182759247720241546630859375p-983 {- 2858406843490847 -983 (-1.99963e-296)}
; -1.0901643426221927501984509945032186806201934814453125p836 + -1.6346938182779309212122598182759247720241546630859375p-983 == -1.0901643426221927501984509945032186806201934814453125p836
; [HW: -1.0901643426221927501984509945032186806201934814453125p836] 

; mpf : - 406064099835413 836
; mpfd: - 406064099835413 836 (-4.99538e+251) class: Neg. norm. non-zero
; hwf : - 406064099835413 836 (-4.99538e+251) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101000011 #b0001011100010101000000101010011011010011111000010101)))
(assert (= y (fp #b1 #b00000101000 #b1010001001111011010010110100100001111010001000011111)))
(assert (= r (fp #b1 #b11101000011 #b0001011100010101000000101010011011010011111000010101)))
(assert (= (fp.add roundTowardZero x y) r))
(check-sat)
(exit)
