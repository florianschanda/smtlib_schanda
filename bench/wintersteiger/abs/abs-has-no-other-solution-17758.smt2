(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4534610107047516436296064057387411594390869140625p-701 {+ 2042206838836968 -701 (1.38158e-211)}
; 1.4534610107047516436296064057387411594390869140625p-701 | == 1.4534610107047516436296064057387411594390869140625p-701
; [HW: 1.4534610107047516436296064057387411594390869140625p-701] 

; mpf : + 2042206838836968 -701
; mpfd: + 2042206838836968 -701 (1.38158e-211) class: Pos. norm. non-zero
; hwf : + 2042206838836968 -701 (1.38158e-211) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101000010 #b0111010000010110000001010101001011111100111011101000)))
(assert (= r (fp #b0 #b00101000010 #b0111010000010110000001010101001011111100111011101000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
