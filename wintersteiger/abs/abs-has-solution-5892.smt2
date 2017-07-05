(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.230523949532965399811246243189089000225067138671875p667 {+ 1038187573216638 667 (7.53524e+200)}
; 1.230523949532965399811246243189089000225067138671875p667 | == 1.230523949532965399811246243189089000225067138671875p667
; [HW: 1.230523949532965399811246243189089000225067138671875p667] 

; mpf : + 1038187573216638 667
; mpfd: + 1038187573216638 667 (7.53524e+200) class: Pos. norm. non-zero
; hwf : + 1038187573216638 667 (7.53524e+200) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010011010 #b0011101100000011100111100001100000110000010101111110)))
(assert (= r (fp #b0 #b11010011010 #b0011101100000011100111100001100000110000010101111110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
