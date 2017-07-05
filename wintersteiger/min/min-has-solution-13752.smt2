(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3511636274726110951149848915520124137401580810546875p541 {+ 1581500381831723 541 (9.72603e+162)}
; Y = 1.5884547554300192384602041784091852605342864990234375p-976 {+ 2650164617279031 -976 (2.48713e-294)}
; 1.3511636274726110951149848915520124137401580810546875p541 m 1.5884547554300192384602041784091852605342864990234375p-976 == 1.5884547554300192384602041784091852605342864990234375p-976
; [HW: 1.5884547554300192384602041784091852605342864990234375p-976] 

; mpf : + 2650164617279031 -976
; mpfd: + 2650164617279031 -976 (2.48713e-294) class: Pos. norm. non-zero
; hwf : + 2650164617279031 -976 (2.48713e-294) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000011100 #b0101100111100101110111000000011110001010001000101011)))
(assert (= y (fp #b0 #b00000101111 #b1001011010100100111110001000100110111111011000110111)))
(assert (= r (fp #b0 #b00000101111 #b1001011010100100111110001000100110111111011000110111)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
