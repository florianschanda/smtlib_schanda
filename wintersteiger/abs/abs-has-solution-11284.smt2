(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4335115098492960949982943930081091821193695068359375p-450 {+ 1952362274218111 -450 (4.93064e-136)}
; 1.4335115098492960949982943930081091821193695068359375p-450 | == 1.4335115098492960949982943930081091821193695068359375p-450
; [HW: 1.4335115098492960949982943930081091821193695068359375p-450] 

; mpf : + 1952362274218111 -450
; mpfd: + 1952362274218111 -450 (4.93064e-136) class: Pos. norm. non-zero
; hwf : + 1952362274218111 -450 (4.93064e-136) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000111101 #b0110111011111010100111000011110100111110000001111111)))
(assert (= r (fp #b0 #b01000111101 #b0110111011111010100111000011110100111110000001111111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
