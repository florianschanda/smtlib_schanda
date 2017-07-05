(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2514475741255324248157876354525797069072723388671875p5 {+ 1132419201134963 5 (40.0463)}
; 1.2514475741255324248157876354525797069072723388671875p5 | == 1.2514475741255324248157876354525797069072723388671875p5
; [HW: 1.2514475741255324248157876354525797069072723388671875p5] 

; mpf : + 1132419201134963 5
; mpfd: + 1132419201134963 5 (40.0463) class: Pos. norm. non-zero
; hwf : + 1132419201134963 5 (40.0463) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000000100 #b0100000001011110110111100100001110000111000101110011)))
(assert (= r (fp #b0 #b10000000100 #b0100000001011110110111100100001110000111000101110011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
