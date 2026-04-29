(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8800692072036573332383113665855489671230316162109375p820 {- 3963479353622639 820 (-1.31453e+247)}
; -1.8800692072036573332383113665855489671230316162109375p820 | == 1.8800692072036573332383113665855489671230316162109375p820
; [HW: 1.8800692072036573332383113665855489671230316162109375p820] 

; mpf : + 3963479353622639 820
; mpfd: + 3963479353622639 820 (1.31453e+247) class: Pos. norm. non-zero
; hwf : + 3963479353622639 820 (1.31453e+247) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100110011 #b1110000101001100001101110010111100101000000001101111)))
(assert (= r (fp #b0 #b11100110011 #b1110000101001100001101110010111100101000000001101111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
