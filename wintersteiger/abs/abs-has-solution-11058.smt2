(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.01779118746790242511224278132431209087371826171875p2 {- 80124385250924 2 (-4.07116)}
; -1.01779118746790242511224278132431209087371826171875p2 | == 1.01779118746790242511224278132431209087371826171875p2
; [HW: 1.01779118746790242511224278132431209087371826171875p2] 

; mpf : + 80124385250924 2
; mpfd: + 80124385250924 2 (4.07116) class: Pos. norm. non-zero
; hwf : + 80124385250924 2 (4.07116) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000000001 #b0000010010001101111101101001100001010100111001101100)))
(assert (= r (fp #b0 #b10000000001 #b0000010010001101111101101001100001010100111001101100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
