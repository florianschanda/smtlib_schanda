(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0139858104396999305407689462299458682537078857421875p-966 {- 62986490684707 -966 (-1.62576e-291)}
; -1.0139858104396999305407689462299458682537078857421875p-966 | == 1.0139858104396999305407689462299458682537078857421875p-966
; [HW: 1.0139858104396999305407689462299458682537078857421875p-966] 

; mpf : + 62986490684707 -966
; mpfd: + 62986490684707 -966 (1.62576e-291) class: Pos. norm. non-zero
; hwf : + 62986490684707 -966 (1.62576e-291) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000111001 #b0000001110010100100100101111011001110010010100100011)))
(assert (= r (fp #b0 #b00000111001 #b0000001110010100100100101111011001110010010100100011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
