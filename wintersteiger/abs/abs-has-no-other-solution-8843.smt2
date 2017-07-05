(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8613993226733407393425068221404217183589935302734375p755 {- 3879397668608855 755 (-3.52766e+227)}
; -1.8613993226733407393425068221404217183589935302734375p755 | == 1.8613993226733407393425068221404217183589935302734375p755
; [HW: 1.8613993226733407393425068221404217183589935302734375p755] 

; mpf : + 3879397668608855 755
; mpfd: + 3879397668608855 755 (3.52766e+227) class: Pos. norm. non-zero
; hwf : + 3879397668608855 755 (3.52766e+227) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011110010 #b1101110010000100101010100111111110101101101101010111)))
(assert (= r (fp #b0 #b11011110010 #b1101110010000100101010100111111110101101101101010111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
