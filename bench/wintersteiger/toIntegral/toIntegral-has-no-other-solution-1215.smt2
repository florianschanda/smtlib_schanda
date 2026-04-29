(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4532671775113288337166750352480448782444000244140625 712 {+ 2041333891739297 712 (3.13114e+214)}
; 1.4532671775113288337166750352480448782444000244140625 712 I == 1.4532671775113288337166750352480448782444000244140625 712
; [HW: 1.4532671775113288337166750352480448782444000244140625 712] 

; mpf : + 2041333891739297 712
; mpfd: + 2041333891739297 712 (3.13114e+214) class: Pos. norm. non-zero
; hwf : + 2041333891739297 712 (3.13114e+214) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011000111 #b0111010000001001010100010101011111000010111010100001)))
(assert (= r (fp #b0 #b11011000111 #b0111010000001001010100010101011111000010111010100001)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
