(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.44371882675061602441246577654965221881866455078125p-350 {- 1998331942811348 -350 (-6.29483e-106)}
; -1.44371882675061602441246577654965221881866455078125p-350 | == 1.44371882675061602441246577654965221881866455078125p-350
; [HW: 1.44371882675061602441246577654965221881866455078125p-350] 

; mpf : + 1998331942811348 -350
; mpfd: + 1998331942811348 -350 (6.29483e-106) class: Pos. norm. non-zero
; hwf : + 1998331942811348 -350 (6.29483e-106) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010100001 #b0111000110010111100011101001100110000011011011010100)))
(assert (= r (fp #b0 #b01010100001 #b0111000110010111100011101001100110000011011011010100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
