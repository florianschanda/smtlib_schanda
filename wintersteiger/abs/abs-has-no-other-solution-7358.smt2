(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2353365799963296201013918107491917908191680908203125p433 {+ 1059861733978117 433 (2.74014e+130)}
; 1.2353365799963296201013918107491917908191680908203125p433 | == 1.2353365799963296201013918107491917908191680908203125p433
; [HW: 1.2353365799963296201013918107491917908191680908203125p433] 

; mpf : + 1059861733978117 433
; mpfd: + 1059861733978117 433 (2.74014e+130) class: Pos. norm. non-zero
; hwf : + 1059861733978117 433 (2.74014e+130) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110110000 #b0011110000111111000001001010001010100011000000000101)))
(assert (= r (fp #b0 #b10110110000 #b0011110000111111000001001010001010100011000000000101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
