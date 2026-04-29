(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.234423155639512881265318355872295796871185302734375p-205 {+ 1055748036385126 -205 (2.40057e-062)}
; 1.234423155639512881265318355872295796871185302734375p-205 | == 1.234423155639512881265318355872295796871185302734375p-205
; [HW: 1.234423155639512881265318355872295796871185302734375p-205] 

; mpf : + 1055748036385126 -205
; mpfd: + 1055748036385126 -205 (2.40057e-062) class: Pos. norm. non-zero
; hwf : + 1055748036385126 -205 (2.40057e-062) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100110010 #b0011110000000011001001111110101011100101100101100110)))
(assert (= r (fp #b0 #b01100110010 #b0011110000000011001001111110101011100101100101100110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
