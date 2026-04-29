(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3872577819920353103810839456855319440364837646484375p842 {- 1744054002675655 842 (-4.06831e+253)}
; -1.3872577819920353103810839456855319440364837646484375p842 | == 1.3872577819920353103810839456855319440364837646484375p842
; [HW: 1.3872577819920353103810839456855319440364837646484375p842] 

; mpf : + 1744054002675655 842
; mpfd: + 1744054002675655 842 (4.06831e+253) class: Pos. norm. non-zero
; hwf : + 1744054002675655 842 (4.06831e+253) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101001001 #b0110001100100011010100110111010011000110111111000111)))
(assert (= r (fp #b0 #b11101001001 #b0110001100100011010100110111010011000110111111000111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
