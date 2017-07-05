(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6499411136074841888188302618800662457942962646484375 813 {+ 2927074557055431 813 (9.0127e+244)}
; 1.6499411136074841888188302618800662457942962646484375 813 I == 1.6499411136074841888188302618800662457942962646484375 813
; [HW: 1.6499411136074841888188302618800662457942962646484375 813] 

; mpf : + 2927074557055431 813
; mpfd: + 2927074557055431 813 (9.0127e+244) class: Pos. norm. non-zero
; hwf : + 2927074557055431 813 (9.0127e+244) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100101100 #b1010011001100010100010100111001101000101000111000111)))
(assert (= r (fp #b0 #b11100101100 #b1010011001100010100010100111001101000101000111000111)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
