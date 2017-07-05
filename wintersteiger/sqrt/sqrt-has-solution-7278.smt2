(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.606559494906347307363603249541483819484710693359375p-100 {+ 2731701115238262 -100 (1.26735e-030)}
; 1.606559494906347307363603249541483819484710693359375p-100 S == 1.267501280041305466994572270778007805347442626953125p-50
; [HW: 1.267501280041305466994572270778007805347442626953125p-50] 

; mpf : + 1204718665115154 -50
; mpfd: + 1204718665115154 -50 (1.12577e-015) class: Pos. norm. non-zero
; hwf : + 1204718665115154 -50 (1.12577e-015) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110011011 #b1001101101000111011110111010100110110011011101110110)))
(assert (= r (fp #b0 #b01111001101 #b0100010001111010111101101100000101101010011000010010)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
