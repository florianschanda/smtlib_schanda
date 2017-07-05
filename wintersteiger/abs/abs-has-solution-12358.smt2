(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.541493079236216257044134181342087686061859130859375p-600 {+ 2438668029871926 -600 (3.71487e-181)}
; 1.541493079236216257044134181342087686061859130859375p-600 | == 1.541493079236216257044134181342087686061859130859375p-600
; [HW: 1.541493079236216257044134181342087686061859130859375p-600] 

; mpf : + 2438668029871926 -600
; mpfd: + 2438668029871926 -600 (3.71487e-181) class: Pos. norm. non-zero
; hwf : + 2438668029871926 -600 (3.71487e-181) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110100111 #b1000101010011111010010100101101001010100011100110110)))
(assert (= r (fp #b0 #b00110100111 #b1000101010011111010010100101101001010100011100110110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
