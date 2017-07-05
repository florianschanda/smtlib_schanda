(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5189633248552165678546543858828954398632049560546875p-783 {+ 2337203036436907 -783 (2.9858e-236)}
; 1.5189633248552165678546543858828954398632049560546875p-783 S == 1.742964902030569529500780845410190522670745849609375p-392
; [HW: 1.742964902030569529500780845410190522670745849609375p-392] 

; mpf : + 3346016455934230 -392
; mpfd: + 3346016455934230 -392 (1.72795e-118) class: Pos. norm. non-zero
; hwf : + 3346016455934230 -392 (1.72795e-118) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011110000 #b1000010011011010110001111100110000010011100110101011)))
(assert (= r (fp #b0 #b01001110111 #b1011111000110010111100101010010001001100000100010110)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
