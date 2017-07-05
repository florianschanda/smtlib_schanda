(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1242585508043381192777587784803472459316253662109375p2 {- 559610763100015 2 (-4.49703)}
; Y = -1.3769951248009160149621266100439243018627166748046875p-161 {- 1697835103573899 -161 (-4.71089e-049)}
; -1.1242585508043381192777587784803472459316253662109375p2 > -1.3769951248009160149621266100439243018627166748046875p-161 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000000001 #b0001111111001111011010001000101111110011111101101111)))
(assert (= y (fp #b1 #b01101011110 #b0110000010000010110000001010001111000101011110001011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
