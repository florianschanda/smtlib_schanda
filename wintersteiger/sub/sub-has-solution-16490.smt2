(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.010709666725597255521051920368336141109466552734375p262 {+ 48232051074662 262 (7.49006e+078)}
; Y = 1.95882821189008193840663807350210845470428466796875p292 {+ 4318178377780492 292 (1.55867e+088)}
; 1.010709666725597255521051920368336141109466552734375p262 - 1.95882821189008193840663807350210845470428466796875p292 == -1.95882821094878512013792715151794254779815673828125p292
; [HW: -1.95882821094878512013792715151794254779815673828125p292] 

; mpf : - 4318178373541268 292
; mpfd: - 4318178373541268 292 (-1.55867e+088) class: Neg. norm. non-zero
; hwf : - 4318178373541268 292 (-1.55867e+088) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100000101 #b0000001010111101110111100110010001010110011001100110)))
(assert (= y (fp #b0 #b10100100011 #b1111010101110101110001000000010010001100110100001100)))
(assert (= r (fp #b1 #b10100100011 #b1111010101110101110001000000000010000001110110010100)))
(assert (= (fp.sub roundTowardZero x y) r))
(check-sat)
(exit)
