(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3009413955200683776780579137266613543033599853515625p933 {+ 1355319556724537 933 (9.44591e+280)}
; 1.3009413955200683776780579137266613543033599853515625p933 | == 1.3009413955200683776780579137266613543033599853515625p933
; [HW: 1.3009413955200683776780579137266613543033599853515625p933] 

; mpf : + 1355319556724537 933
; mpfd: + 1355319556724537 933 (9.44591e+280) class: Pos. norm. non-zero
; hwf : + 1355319556724537 933 (9.44591e+280) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110100100 #b0100110100001010011111101100101111000101011100111001)))
(assert (= r (fp #b0 #b11110100100 #b0100110100001010011111101100101111000101011100111001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
