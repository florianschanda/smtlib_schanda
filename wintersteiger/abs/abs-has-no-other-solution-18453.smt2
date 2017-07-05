(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.694845756436745620732153838616795837879180908203125p816 {- 3129307089768498 816 (-7.40639e+245)}
; -1.694845756436745620732153838616795837879180908203125p816 | == 1.694845756436745620732153838616795837879180908203125p816
; [HW: 1.694845756436745620732153838616795837879180908203125p816] 

; mpf : + 3129307089768498 816
; mpfd: + 3129307089768498 816 (7.40639e+245) class: Pos. norm. non-zero
; hwf : + 3129307089768498 816 (7.40639e+245) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100101111 #b1011000111100001011010010101011110101001000000110010)))
(assert (= r (fp #b0 #b11100101111 #b1011000111100001011010010101011110101001000000110010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
