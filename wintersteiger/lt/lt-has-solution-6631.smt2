(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.351394219697056531259704570402391254901885986328125p-464 {- 1582538876887810 -464 (-2.83703e-140)}
; Y = -1.878269524892828723494631049106828868389129638671875p-338 {- 3955374305038206 -338 (-3.35443e-102)}
; -1.351394219697056531259704570402391254901885986328125p-464 < -1.878269524892828723494631049106828868389129638671875p-338 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000101111 #b0101100111110100111110001011100110011010001100000010)))
(assert (= y (fp #b1 #b01010101101 #b1110000011010110010001011000011001111100111101111110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
