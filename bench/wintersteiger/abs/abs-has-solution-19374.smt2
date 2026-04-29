(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3626250758009772479084631413570605218410491943359375p-249 {+ 1633118156252479 -249 (1.50629e-075)}
; 1.3626250758009772479084631413570605218410491943359375p-249 | == 1.3626250758009772479084631413570605218410491943359375p-249
; [HW: 1.3626250758009772479084631413570605218410491943359375p-249] 

; mpf : + 1633118156252479 -249
; mpfd: + 1633118156252479 -249 (1.50629e-075) class: Pos. norm. non-zero
; hwf : + 1633118156252479 -249 (1.50629e-075) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100000110 #b0101110011010100111111110011100101000110010100111111)))
(assert (= r (fp #b0 #b01100000110 #b0101110011010100111111110011100101000110010100111111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
