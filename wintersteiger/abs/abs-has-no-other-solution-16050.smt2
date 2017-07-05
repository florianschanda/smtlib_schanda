(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.752439147173556310832509552710689604282379150390625p585 {+ 3388684662829802 585 (2.21917e+176)}
; 1.752439147173556310832509552710689604282379150390625p585 | == 1.752439147173556310832509552710689604282379150390625p585
; [HW: 1.752439147173556310832509552710689604282379150390625p585] 

; mpf : + 3388684662829802 585
; mpfd: + 3388684662829802 585 (2.21917e+176) class: Pos. norm. non-zero
; hwf : + 3388684662829802 585 (2.21917e+176) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001001000 #b1100000010011111110110100001100101010111001011101010)))
(assert (= r (fp #b0 #b11001001000 #b1100000010011111110110100001100101010111001011101010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
