(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8457697955485870000558179526706226170063018798828125p742 {+ 3809008536073837 742 (4.27006e+223)}
; Y = -1.5672577166783614455169981738436035811901092529296875p-221 {- 2554701641455707 -221 (-4.65063e-067)}
; 1.8457697955485870000558179526706226170063018798828125p742 m -1.5672577166783614455169981738436035811901092529296875p-221 == -1.5672577166783614455169981738436035811901092529296875p-221
; [HW: -1.5672577166783614455169981738436035811901092529296875p-221] 

; mpf : - 2554701641455707 -221
; mpfd: - 2554701641455707 -221 (-4.65063e-067) class: Neg. norm. non-zero
; hwf : - 2554701641455707 -221 (-4.65063e-067) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011100101 #b1101100010000100010111101000101111010011011001101101)))
(assert (= y (fp #b1 #b01100100010 #b1001000100110111110011010011110110001001100001011011)))
(assert (= r (fp #b1 #b01100100010 #b1001000100110111110011010011110110001001100001011011)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
