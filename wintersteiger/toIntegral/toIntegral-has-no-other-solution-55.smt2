(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.752827297820646723636173192062415182590484619140625 538 {- 3390432737939402 538 (-1.57716e+162)}
; -1.752827297820646723636173192062415182590484619140625 538 I == -1.752827297820646723636173192062415182590484619140625 538
; [HW: -1.752827297820646723636173192062415182590484619140625 538] 

; mpf : - 3390432737939402 538
; mpfd: - 3390432737939402 538 (-1.57716e+162) class: Neg. norm. non-zero
; hwf : - 3390432737939402 538 (-1.57716e+162) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000011001 #b1100000010111001010010100010111110101100111111001010)))
(assert (= r (fp #b1 #b11000011001 #b1100000010111001010010100010111110101100111111001010)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
