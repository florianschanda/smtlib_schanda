(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4386985577997013496798217602190561592578887939453125p-294 {+ 1975722661434709 -294 (4.52013e-089)}
; 1.4386985577997013496798217602190561592578887939453125p-294 | == 1.4386985577997013496798217602190561592578887939453125p-294
; [HW: 1.4386985577997013496798217602190561592578887939453125p-294] 

; mpf : + 1975722661434709 -294
; mpfd: + 1975722661434709 -294 (4.52013e-089) class: Pos. norm. non-zero
; hwf : + 1975722661434709 -294 (4.52013e-089) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011011001 #b0111000001001110100011000111011010001101010101010101)))
(assert (= r (fp #b0 #b01011011001 #b0111000001001110100011000111011010001101010101010101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
