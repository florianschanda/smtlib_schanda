(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.21845801271722908865058343508280813694000244140625 239 {+ 983847424669412 239 (1.07641e+072)}
; 1.21845801271722908865058343508280813694000244140625 239 I == 1.21845801271722908865058343508280813694000244140625 239
; [HW: 1.21845801271722908865058343508280813694000244140625 239] 

; mpf : + 983847424669412 239
; mpfd: + 983847424669412 239 (1.07641e+072) class: Pos. norm. non-zero
; hwf : + 983847424669412 239 (1.07641e+072) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011101110 #b0011011111101100110111010100010000101011011011100100)))
(assert (= r (fp #b0 #b10011101110 #b0011011111101100110111010100010000101011011011100100)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
