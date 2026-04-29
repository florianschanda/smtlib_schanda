(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.431244143063933993431646740646101534366607666015625p101 {+ 1942150962008442 101 (3.62863e+030)}
; 1.431244143063933993431646740646101534366607666015625p101 | == 1.431244143063933993431646740646101534366607666015625p101
; [HW: 1.431244143063933993431646740646101534366607666015625p101] 

; mpf : + 1942150962008442 101
; mpfd: + 1942150962008442 101 (3.62863e+030) class: Pos. norm. non-zero
; hwf : + 1942150962008442 101 (3.62863e+030) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001100100 #b0110111001100110000001000010001100001101000101111010)))
(assert (= r (fp #b0 #b10001100100 #b0110111001100110000001000010001100001101000101111010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
