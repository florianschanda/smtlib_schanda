(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.949546097117540899290588640724308788776397705078125p-728 {- 4276375449149666 -728 (-1.38069e-219)}
; -1.949546097117540899290588640724308788776397705078125p-728 | == 1.949546097117540899290588640724308788776397705078125p-728
; [HW: 1.949546097117540899290588640724308788776397705078125p-728] 

; mpf : + 4276375449149666 -728
; mpfd: + 4276375449149666 -728 (1.38069e-219) class: Pos. norm. non-zero
; hwf : + 4276375449149666 -728 (1.38069e-219) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100100111 #b1111001100010101011100111111100100101010000011100010)))
(assert (= r (fp #b0 #b00100100111 #b1111001100010101011100111111100100101010000011100010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
