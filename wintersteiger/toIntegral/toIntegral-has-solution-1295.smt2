(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8523293215648999332501034587039612233638763427734375 468 {- 3838550014996631 468 (-1.41174e+141)}
; -1.8523293215648999332501034587039612233638763427734375 468 I == -1.8523293215648999332501034587039612233638763427734375 468
; [HW: -1.8523293215648999332501034587039612233638763427734375 468] 

; mpf : - 3838550014996631 468
; mpfd: - 3838550014996631 468 (-1.41174e+141) class: Neg. norm. non-zero
; hwf : - 3838550014996631 468 (-1.41174e+141) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111010011 #b1101101000110010010000010010000110001011000010010111)))
(assert (= r (fp #b1 #b10111010011 #b1101101000110010010000010010000110001011000010010111)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
