(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3871065220415725871561107851448468863964080810546875p-461 {+ 1743372788419115 -461 (2.3296e-139)}
; 1.3871065220415725871561107851448468863964080810546875p-461 S == 1.6655969032401400919951584000955335795879364013671875p-231
; [HW: 1.6655969032401400919951584000955335795879364013671875p-231] 

; mpf : + 2997581965411251 -231
; mpfd: + 2997581965411251 -231 (4.8266e-070) class: Pos. norm. non-zero
; hwf : + 2997581965411251 -231 (4.8266e-070) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000110010 #b0110001100011001011010011011110000111100101000101011)))
(assert (= r (fp #b0 #b01100011000 #b1010101001100100100011110000001110111100001110110011)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
