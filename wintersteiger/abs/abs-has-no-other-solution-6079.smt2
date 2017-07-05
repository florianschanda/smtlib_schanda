(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9150223480782189167115348027436994016170501708984375p-956 {+ 4120894305840743 -956 (3.14411e-288)}
; 1.9150223480782189167115348027436994016170501708984375p-956 | == 1.9150223480782189167115348027436994016170501708984375p-956
; [HW: 1.9150223480782189167115348027436994016170501708984375p-956] 

; mpf : + 4120894305840743 -956
; mpfd: + 4120894305840743 -956 (3.14411e-288) class: Pos. norm. non-zero
; hwf : + 4120894305840743 -956 (3.14411e-288) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001000011 #b1110101000111110111001111001010000011010111001100111)))
(assert (= r (fp #b0 #b00001000011 #b1110101000111110111001111001010000011010111001100111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
