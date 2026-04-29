(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.696211905442388978570988911087624728679656982421875p-106 {- 3135459677921246 -106 (-2.09074e-032)}
; -1.696211905442388978570988911087624728679656982421875p-106 | == 1.696211905442388978570988911087624728679656982421875p-106
; [HW: 1.696211905442388978570988911087624728679656982421875p-106] 

; mpf : + 3135459677921246 -106
; mpfd: + 3135459677921246 -106 (2.09074e-032) class: Pos. norm. non-zero
; hwf : + 3135459677921246 -106 (2.09074e-032) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110010101 #b1011001000111010111100011000010011110101111111011110)))
(assert (= r (fp #b0 #b01110010101 #b1011001000111010111100011000010011110101111111011110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
