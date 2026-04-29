(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.81109570585055923430672919494099915027618408203125p743 {+ 3652850318630388 743 (8.37969e+223)}
; 1.81109570585055923430672919494099915027618408203125p743 S == 1.9032055621243646470475141541101038455963134765625p371
; [HW: 1.9032055621243646470475141541101038455963134765625p371] 

; mpf : + 4067676233022248 371
; mpfd: + 4067676233022248 371 (9.15407e+111) class: Pos. norm. non-zero
; hwf : + 4067676233022248 371 (9.15407e+111) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011100110 #b1100111110100011111101111101101010001101110111110100)))
(assert (= r (fp #b0 #b10101110010 #b1110011100111000011110101100111011100011101100101000)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
