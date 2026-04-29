(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8528718875185246073300504576764069497585296630859375 603 {+ 3840993514823199 603 (6.15082e+181)}
; 1.8528718875185246073300504576764069497585296630859375 603 I == 1.8528718875185246073300504576764069497585296630859375 603
; [HW: 1.8528718875185246073300504576764069497585296630859375 603] 

; mpf : + 3840993514823199 603
; mpfd: + 3840993514823199 603 (6.15082e+181) class: Pos. norm. non-zero
; hwf : + 3840993514823199 603 (6.15082e+181) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001011010 #b1101101001010101110011111110000010010001111000011111)))
(assert (= r (fp #b0 #b11001011010 #b1101101001010101110011111110000010010001111000011111)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
