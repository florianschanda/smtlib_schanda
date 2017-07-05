(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.007355772336539612155092981993220746517181396484375p395 {+ 33127453553862 395 (8.12889e+118)}
; 1.007355772336539612155092981993220746517181396484375p395 | == 1.007355772336539612155092981993220746517181396484375p395
; [HW: 1.007355772336539612155092981993220746517181396484375p395] 

; mpf : + 33127453553862 395
; mpfd: + 33127453553862 395 (8.12889e+118) class: Pos. norm. non-zero
; hwf : + 33127453553862 395 (8.12889e+118) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110001010 #b0000000111100010000100010110000110011111010011000110)))
(assert (= r (fp #b0 #b10110001010 #b0000000111100010000100010110000110011111010011000110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
