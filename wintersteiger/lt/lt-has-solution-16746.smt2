(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7978946298999789465966614443459548056125640869140625p1008 {+ 3593397957898465 1008 (4.93174e+303)}
; Y = 1.7461279864780963055892470947583205997943878173828125p889 {+ 3360261721873453 889 (7.2068e+267)}
; 1.7978946298999789465966614443459548056125640869140625p1008 < 1.7461279864780963055892470947583205997943878173828125p889 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111101111 #b1100110001000010110100101000110100010011000011100001)))
(assert (= y (fp #b0 #b11101111000 #b1011111100000010001111100110010010001101110000101101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
