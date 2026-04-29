(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7254818571646326486046518766670487821102142333984375p410 {- 3267279821590695 410 (-4.56256e+123)}
; Y = -1.4352972969353665622094240461592562496662139892578125p-125 {- 1960404744273501 -125 (-3.37437e-038)}
; -1.7254818571646326486046518766670487821102142333984375p410 = -1.4352972969353665622094240461592562496662139892578125p-125 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110011001 #b1011100110111001001011011101001001011101000010100111)))
(assert (= y (fp #b1 #b01110000010 #b0110111101101111101001001100011001011111111001011101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
