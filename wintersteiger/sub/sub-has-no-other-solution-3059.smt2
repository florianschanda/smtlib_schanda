(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6518600205925395574269032294978387653827667236328125p1005 {+ 2935716545838285 1005 (5.66394e+302)}
; Y = -1.5718587399655461478431561772595159709453582763671875p-841 {- 2575422808217395 -841 (-1.07198e-253)}
; 1.6518600205925395574269032294978387653827667236328125p1005 - -1.5718587399655461478431561772595159709453582763671875p-841 == 1.6518600205925395574269032294978387653827667236328125p1005
; [HW: 1.6518600205925395574269032294978387653827667236328125p1005] 

; mpf : + 2935716545838285 1005
; mpfd: + 2935716545838285 1005 (5.66394e+302) class: Pos. norm. non-zero
; hwf : + 2935716545838285 1005 (5.66394e+302) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111101100 #b1010011011100000010011000101111000000011110011001101)))
(assert (= y (fp #b1 #b00010110110 #b1001001001100101010101011001101000010101011100110011)))
(assert (= r (fp #b0 #b11111101100 #b1010011011100000010011000101111000000011110011001101)))
(assert  (not (= (fp.sub roundTowardZero x y) r)))
(check-sat)
(exit)
