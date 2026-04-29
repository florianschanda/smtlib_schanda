(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5033909178399971207085172864026390016078948974609375p-421 {+ 2267071150005903 -421 (2.77616e-127)}
; 1.5033909178399971207085172864026390016078948974609375p-421 | == 1.5033909178399971207085172864026390016078948974609375p-421
; [HW: 1.5033909178399971207085172864026390016078948974609375p-421] 

; mpf : + 2267071150005903 -421
; mpfd: + 2267071150005903 -421 (2.77616e-127) class: Pos. norm. non-zero
; hwf : + 2267071150005903 -421 (2.77616e-127) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001011010 #b1000000011011110001110100010100100111001111010001111)))
(assert (= r (fp #b0 #b01001011010 #b1000000011011110001110100010100100111001111010001111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
