(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2270338333576373823774474658421240746974945068359375p-363 {+ 1022469487309951 -363 (6.53083e-110)}
; 1.2270338333576373823774474658421240746974945068359375p-363 | == 1.2270338333576373823774474658421240746974945068359375p-363
; [HW: 1.2270338333576373823774474658421240746974945068359375p-363] 

; mpf : + 1022469487309951 -363
; mpfd: + 1022469487309951 -363 (6.53083e-110) class: Pos. norm. non-zero
; hwf : + 1022469487309951 -363 (6.53083e-110) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010010100 #b0011101000011110111000111010100101011011010001111111)))
(assert (= r (fp #b0 #b01010010100 #b0011101000011110111000111010100101011011010001111111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
