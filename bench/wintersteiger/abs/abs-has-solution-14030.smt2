(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0947317267911784721690082733402960002422332763671875p-490 {+ 426633769476915 -490 (3.4246e-148)}
; 1.0947317267911784721690082733402960002422332763671875p-490 | == 1.0947317267911784721690082733402960002422332763671875p-490
; [HW: 1.0947317267911784721690082733402960002422332763671875p-490] 

; mpf : + 426633769476915 -490
; mpfd: + 426633769476915 -490 (3.4246e-148) class: Pos. norm. non-zero
; hwf : + 426633769476915 -490 (3.4246e-148) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000010101 #b0001100001000000010101101010010001110110001100110011)))
(assert (= r (fp #b0 #b01000010101 #b0001100001000000010101101010010001110110001100110011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
