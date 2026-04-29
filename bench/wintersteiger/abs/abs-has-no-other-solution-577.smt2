(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.162595331913488738706519143306650221347808837890625p343 {+ 732264276217770 343 (2.08313e+103)}
; 1.162595331913488738706519143306650221347808837890625p343 | == 1.162595331913488738706519143306650221347808837890625p343
; [HW: 1.162595331913488738706519143306650221347808837890625p343] 

; mpf : + 732264276217770 343
; mpfd: + 732264276217770 343 (2.08313e+103) class: Pos. norm. non-zero
; hwf : + 732264276217770 343 (2.08313e+103) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101010110 #b0010100110011111110110010000000100001100111110101010)))
(assert (= r (fp #b0 #b10101010110 #b0010100110011111110110010000000100001100111110101010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
