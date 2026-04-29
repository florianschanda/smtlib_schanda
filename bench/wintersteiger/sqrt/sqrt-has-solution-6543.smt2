(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5441566162673165951702003440004773437976837158203125p577 {+ 2450663534252677 577 (7.63834e+173)}
; 1.5441566162673165951702003440004773437976837158203125p577 S == 1.75735973338831019674444178235717117786407470703125p288
; [HW: 1.75735973338831019674444178235717117786407470703125p288] 

; mpf : + 3410845013073012 288
; mpfd: + 3410845013073012 288 (8.73976e+086) class: Pos. norm. non-zero
; hwf : + 3410845013073012 288 (8.73976e+086) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001000000 #b1000101101001101110110010001011011000101001010000101)))
(assert (= r (fp #b0 #b10100011111 #b1100000111100010010100111101011000110101110001110100)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
