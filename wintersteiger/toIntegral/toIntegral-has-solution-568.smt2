(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8664056231070265123861418032902292907238006591796875 268 {+ 3901944041376507 268 (8.85207e+080)}
; 1.8664056231070265123861418032902292907238006591796875 268 I == 1.8664056231070265123861418032902292907238006591796875 268
; [HW: 1.8664056231070265123861418032902292907238006591796875 268] 

; mpf : + 3901944041376507 268
; mpfd: + 3901944041376507 268 (8.85207e+080) class: Pos. norm. non-zero
; hwf : + 3901944041376507 268 (8.85207e+080) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100001011 #b1101110111001100110000100100100001010000101011111011)))
(assert (= r (fp #b0 #b10100001011 #b1101110111001100110000100100100001010000101011111011)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
