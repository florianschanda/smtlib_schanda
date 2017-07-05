(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = NaN {- 2789788943492114 1024 (-1.#QNAN)}
; Y = 1.017156502882094581963201562757603824138641357421875p-85 {+ 77266019986782 -85 (2.62929e-026)}
; NaN * 1.017156502882094581963201562757603824138641357421875p-85 == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2789788943492114 1024 (-1.#QNAN) class: NaN

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ NaN 11 53)))
(assert (= y (fp #b0 #b01110101010 #b0000010001100100010111100101101011001010110101011110)))
(assert (= r (_ NaN 11 53)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
