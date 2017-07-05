(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1373164969954709935251457864069379866123199462890625p236 {- 618418524700625 236 (-1.25592e+071)}
; -1.1373164969954709935251457864069379866123199462890625p236 | == 1.1373164969954709935251457864069379866123199462890625p236
; [HW: 1.1373164969954709935251457864069379866123199462890625p236] 

; mpf : + 618418524700625 236
; mpfd: + 618418524700625 236 (1.25592e+071) class: Pos. norm. non-zero
; hwf : + 618418524700625 236 (1.25592e+071) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011101011 #b0010001100100111001011001000011111001011111111010001)))
(assert (= r (fp #b0 #b10011101011 #b0010001100100111001011001000011111001011111111010001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
