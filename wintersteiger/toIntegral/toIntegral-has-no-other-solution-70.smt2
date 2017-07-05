(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.116026426783432778933047302416525781154632568359375 246 {+ 522536572426998 246 (1.26198e+074)}
; 1.116026426783432778933047302416525781154632568359375 246 I == 1.116026426783432778933047302416525781154632568359375 246
; [HW: 1.116026426783432778933047302416525781154632568359375 246] 

; mpf : + 522536572426998 246
; mpfd: + 522536572426998 246 (1.26198e+074) class: Pos. norm. non-zero
; hwf : + 522536572426998 246 (1.26198e+074) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011110101 #b0001110110110011111010000110110010000001101011110110)))
(assert (= r (fp #b0 #b10011110101 #b0001110110110011111010000110110010000001101011110110)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
