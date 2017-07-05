(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8518281267624197017340748061542399227619171142578125p-248 {- 3836292834270941 -248 (-4.09413e-075)}
; -1.8518281267624197017340748061542399227619171142578125p-248 | == 1.8518281267624197017340748061542399227619171142578125p-248
; [HW: 1.8518281267624197017340748061542399227619171142578125p-248] 

; mpf : + 3836292834270941 -248
; mpfd: + 3836292834270941 -248 (4.09413e-075) class: Pos. norm. non-zero
; hwf : + 3836292834270941 -248 (4.09413e-075) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100000111 #b1101101000010001011010000111101001000001111011011101)))
(assert (= r (fp #b0 #b01100000111 #b1101101000010001011010000111101001000001111011011101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
