(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.60611273351782557483602431602776050567626953125p-731 {+ 2729689080815392 -731 (1.42183e-220)}
; Y = 1.4800708988583044511955222333199344575405120849609375p-407 {+ 2162047121209679 -407 (4.4779e-123)}
; 1.60611273351782557483602431602776050567626953125p-731 % 1.4800708988583044511955222333199344575405120849609375p-407 == 1.60611273351782557483602431602776050567626953125p-731
; [HW: 1.60611273351782557483602431602776050567626953125p-731] 

; mpf : + 2729689080815392 -731
; mpfd: + 2729689080815392 -731 (1.42183e-220) class: Pos. norm. non-zero
; hwf : + 2729689080815392 -731 (1.42183e-220) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100100100 #b1001101100101010001101000100000000100101111100100000)))
(assert (= y (fp #b0 #b01001101000 #b0111101011100101111011010010101001011011100101001111)))
(assert (= r (fp #b0 #b00100100100 #x9b2a344025f20)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
