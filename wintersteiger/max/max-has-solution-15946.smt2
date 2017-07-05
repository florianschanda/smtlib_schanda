(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.044961515494142734183924403623677790164947509765625p-399 {+ 202488664425434 -399 (8.09342e-121)}
; Y = -1.0910250744525533672657502393121831119060516357421875p766 {- 409940491385891 766 (-4.23459e+230)}
; 1.044961515494142734183924403623677790164947509765625p-399 M -1.0910250744525533672657502393121831119060516357421875p766 == 1.044961515494142734183924403623677790164947509765625p-399
; [HW: 1.044961515494142734183924403623677790164947509765625p-399] 

; mpf : + 202488664425434 -399
; mpfd: + 202488664425434 -399 (8.09342e-121) class: Pos. norm. non-zero
; hwf : + 202488664425434 -399 (8.09342e-121) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001110000 #b0000101110000010100110010000111010100000001111011010)))
(assert (= y (fp #b1 #b11011111101 #b0001011101001101011010110101010111100011110000100011)))
(assert (= r (fp #b0 #b01001110000 #b0000101110000010100110010000111010100000001111011010)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
