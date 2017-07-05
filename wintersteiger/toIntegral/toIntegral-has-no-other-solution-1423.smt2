(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9163347575348037565845515928231179714202880859375 263 {+ 4126804872580376 263 (2.84027e+079)}
; 1.9163347575348037565845515928231179714202880859375 263 I == 1.9163347575348037565845515928231179714202880859375 263
; [HW: 1.9163347575348037565845515928231179714202880859375 263] 

; mpf : + 4126804872580376 263
; mpfd: + 4126804872580376 263 (2.84027e+079) class: Pos. norm. non-zero
; hwf : + 4126804872580376 263 (2.84027e+079) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100000110 #b1110101010010100111010100010011111001100110100011000)))
(assert (= r (fp #b0 #b10100000110 #b1110101010010100111010100010011111001100110100011000)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
