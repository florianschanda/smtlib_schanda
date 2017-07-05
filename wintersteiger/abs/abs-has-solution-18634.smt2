(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4143102500521738118521852811682038009166717529296875p536 {+ 1865887487750747 536 (3.18143e+161)}
; 1.4143102500521738118521852811682038009166717529296875p536 | == 1.4143102500521738118521852811682038009166717529296875p536
; [HW: 1.4143102500521738118521852811682038009166717529296875p536] 

; mpf : + 1865887487750747 536
; mpfd: + 1865887487750747 536 (3.18143e+161) class: Pos. norm. non-zero
; hwf : + 1865887487750747 536 (3.18143e+161) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000010111 #b0110101000010000001111001000111001011111001001011011)))
(assert (= r (fp #b0 #b11000010111 #b0110101000010000001111001000111001011111001001011011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
