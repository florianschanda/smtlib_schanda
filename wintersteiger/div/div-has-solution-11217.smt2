(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8756648838982179494649926709826104342937469482421875p-544 {- 3943644044825443 -544 (-3.25715e-164)}
; Y = -1.431460836088951804612179330433718860149383544921875p773 {- 1943126860635166 773 (-7.11158e+232)}
; -1.8756648838982179494649926709826104342937469482421875p-544 / -1.431460836088951804612179330433718860149383544921875p773 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111011111 #b1110000000101011100100101110011010011001001101100011)))
(assert (= y (fp #b1 #b11100000100 #b0110111001110100001101111010010010000001110000011110)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardZero x y) r))
(check-sat)
(exit)
