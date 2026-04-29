(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.13751103423701760419817219371907413005828857421875 275 {+ 619294642549164 275 (6.90565e+082)}
; 1.13751103423701760419817219371907413005828857421875 275 I == 1.13751103423701760419817219371907413005828857421875 275
; [HW: 1.13751103423701760419817219371907413005828857421875 275] 

; mpf : + 619294642549164 275
; mpfd: + 619294642549164 275 (6.90565e+082) class: Pos. norm. non-zero
; hwf : + 619294642549164 275 (6.90565e+082) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100010010 #b0010001100110011111011000101001011100011000110101100)))
(assert (= r (fp #b0 #b10100010010 #b0010001100110011111011000101001011100011000110101100)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
