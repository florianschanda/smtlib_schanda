(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1138878211551901387110774521715939044952392578125p-325 {+ 512905148916552 -325 (1.62964e-098)}
; 1.1138878211551901387110774521715939044952392578125p-325 | == 1.1138878211551901387110774521715939044952392578125p-325
; [HW: 1.1138878211551901387110774521715939044952392578125p-325] 

; mpf : + 512905148916552 -325
; mpfd: + 512905148916552 -325 (1.62964e-098) class: Pos. norm. non-zero
; hwf : + 512905148916552 -325 (1.62964e-098) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010111010 #b0001110100100111110000001001001101000110001101001000)))
(assert (= r (fp #b0 #b01010111010 #b0001110100100111110000001001001101000110001101001000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
