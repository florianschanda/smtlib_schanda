(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9433685513489764584704744265764020383358001708984375p-208 {- 4248554256328295 -208 (-4.72407e-063)}
; -1.9433685513489764584704744265764020383358001708984375p-208 | == 1.9433685513489764584704744265764020383358001708984375p-208
; [HW: 1.9433685513489764584704744265764020383358001708984375p-208] 

; mpf : + 4248554256328295 -208
; mpfd: + 4248554256328295 -208 (4.72407e-063) class: Pos. norm. non-zero
; hwf : + 4248554256328295 -208 (4.72407e-063) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100101111 #b1111000110000000100110011111010000011110011001100111)))
(assert (= r (fp #b0 #b01100101111 #b1111000110000000100110011111010000011110011001100111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
