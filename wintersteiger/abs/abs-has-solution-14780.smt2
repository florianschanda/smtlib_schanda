(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.71819110475725889131126677966676652431488037109375p616 {+ 3234445191765596 616 (4.67249e+185)}
; 1.71819110475725889131126677966676652431488037109375p616 | == 1.71819110475725889131126677966676652431488037109375p616
; [HW: 1.71819110475725889131126677966676652431488037109375p616] 

; mpf : + 3234445191765596 616
; mpfd: + 3234445191765596 616 (4.67249e+185) class: Pos. norm. non-zero
; hwf : + 3234445191765596 616 (4.67249e+185) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001100111 #b1011011111011011010111110100101100110101111001011100)))
(assert (= r (fp #b0 #b11001100111 #b1011011111011011010111110100101100110101111001011100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
