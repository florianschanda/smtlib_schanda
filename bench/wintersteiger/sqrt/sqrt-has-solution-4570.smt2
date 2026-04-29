(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.531146571589031335491881691268645226955413818359375p-146 {+ 2392071501887478 -146 (1.71647e-044)}
; 1.531146571589031335491881691268645226955413818359375p-146 S == 1.23739507498172596200447515002451837062835693359375p-73
; [HW: 1.23739507498172596200447515002451837062835693359375p-73] 

; mpf : + 1069132371227292 -73
; mpfd: + 1069132371227292 -73 (1.31014e-022) class: Pos. norm. non-zero
; hwf : + 1069132371227292 -73 (1.31014e-022) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101101101 #b1000011111111001001110001100001001011011011111110110)))
(assert (= r (fp #b0 #b01110110110 #b0011110011000101111011000111001101000111001010011100)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
