(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2936419715829092780268183560110628604888916015625p921 {+ 1322445873801128 921 (2.29319e+277)}
; 1.2936419715829092780268183560110628604888916015625p921 S == 1.608503634800312998009985676617361605167388916015625p460
; [HW: 1.608503634800312998009985676617361605167388916015625p460] 

; mpf : + 2740456742940282 460
; mpfd: + 2740456742940282 460 (4.78873e+138) class: Pos. norm. non-zero
; hwf : + 2740456742940282 460 (4.78873e+138) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110011000 #b0100101100101100000111101100100010101110011110101000)))
(assert (= r (fp #b0 #b10111001011 #b1001101111000110111001001110101011110110111001111010)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
