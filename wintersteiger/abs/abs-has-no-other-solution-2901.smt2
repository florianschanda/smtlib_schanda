(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.12792710490764402919694475713185966014862060546875p-415 {- 576132461992652 -415 (-1.33301e-125)}
; -1.12792710490764402919694475713185966014862060546875p-415 | == 1.12792710490764402919694475713185966014862060546875p-415
; [HW: 1.12792710490764402919694475713185966014862060546875p-415] 

; mpf : + 576132461992652 -415
; mpfd: + 576132461992652 -415 (1.33301e-125) class: Pos. norm. non-zero
; hwf : + 576132461992652 -415 (1.33301e-125) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001100000 #b0010000010111111110101001010101111011001101011001100)))
(assert (= r (fp #b0 #b01001100000 #b0010000010111111110101001010101111011001101011001100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
