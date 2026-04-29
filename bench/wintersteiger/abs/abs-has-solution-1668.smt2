(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.485934663175594305783988602343015372753143310546875p312 {- 2188455168004014 312 (-1.23982e+094)}
; -1.485934663175594305783988602343015372753143310546875p312 | == 1.485934663175594305783988602343015372753143310546875p312
; [HW: 1.485934663175594305783988602343015372753143310546875p312] 

; mpf : + 2188455168004014 312
; mpfd: + 2188455168004014 312 (1.23982e+094) class: Pos. norm. non-zero
; hwf : + 2188455168004014 312 (1.23982e+094) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100110111 #b0111110001100110001101101100111001010100111110101110)))
(assert (= r (fp #b0 #b10100110111 #b0111110001100110001101101100111001010100111110101110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
