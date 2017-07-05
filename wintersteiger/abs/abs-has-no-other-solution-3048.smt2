(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7323594236745976093772014792193658649921417236328125p85 {+ 3298253627562189 85 (6.70174e+025)}
; 1.7323594236745976093772014792193658649921417236328125p85 | == 1.7323594236745976093772014792193658649921417236328125p85
; [HW: 1.7323594236745976093772014792193658649921417236328125p85] 

; mpf : + 3298253627562189 85
; mpfd: + 3298253627562189 85 (6.70174e+025) class: Pos. norm. non-zero
; hwf : + 3298253627562189 85 (6.70174e+025) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001010100 #b1011101101111011111010000011110110011001100011001101)))
(assert (= r (fp #b0 #b10001010100 #b1011101101111011111010000011110110011001100011001101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
