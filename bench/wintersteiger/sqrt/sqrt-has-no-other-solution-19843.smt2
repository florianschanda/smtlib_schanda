(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1134935871234417081865331056178547441959381103515625p-1005 {+ 511129676678073 -1005 (3.24745e-303)}
; 1.1134935871234417081865331056178547441959381103515625p-1005 S == 1.492309342678951100680251329322345554828643798828125p-503
; [HW: 1.492309342678951100680251329322345554828643798828125p-503] 

; mpf : + 2217164172239938 -503
; mpfd: + 2217164172239938 -503 (5.69864e-152) class: Pos. norm. non-zero
; hwf : + 2217164172239938 -503 (5.69864e-152) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000010010 #b0001110100001101111010100110110100000000001110111001)))
(assert (= r (fp #b0 #b01000001000 #b0111111000000111111111000010111001010010010001000010)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
