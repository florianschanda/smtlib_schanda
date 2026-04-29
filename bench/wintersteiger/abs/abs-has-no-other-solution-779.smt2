(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0852825106205659100311322617926634848117828369140625p-60 {+ 384078283052001 -60 (9.41333e-019)}
; 1.0852825106205659100311322617926634848117828369140625p-60 | == 1.0852825106205659100311322617926634848117828369140625p-60
; [HW: 1.0852825106205659100311322617926634848117828369140625p-60] 

; mpf : + 384078283052001 -60
; mpfd: + 384078283052001 -60 (9.41333e-019) class: Pos. norm. non-zero
; hwf : + 384078283052001 -60 (9.41333e-019) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111000011 #b0001010111010101000100110001101000001001001111100001)))
(assert (= r (fp #b0 #b01111000011 #b0001010111010101000100110001101000001001001111100001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
