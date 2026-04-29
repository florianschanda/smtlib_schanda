(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5627321504252476014329431563965044915676116943359375p-445 {+ 2534320302964543 -445 (1.72003e-134)}
; 1.5627321504252476014329431563965044915676116943359375p-445 | == 1.5627321504252476014329431563965044915676116943359375p-445
; [HW: 1.5627321504252476014329431563965044915676116943359375p-445] 

; mpf : + 2534320302964543 -445
; mpfd: + 2534320302964543 -445 (1.72003e-134) class: Pos. norm. non-zero
; hwf : + 2534320302964543 -445 (1.72003e-134) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001000010 #b1001000000001111001101101101011001111011111100111111)))
(assert (= r (fp #b0 #b01001000010 #b1001000000001111001101101101011001111011111100111111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
