(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5178685713197428430731861226377077400684356689453125p835 {+ 2332272704822485 835 (3.47761e+251)}
; 1.5178685713197428430731861226377077400684356689453125p835 | == 1.5178685713197428430731861226377077400684356689453125p835
; [HW: 1.5178685713197428430731861226377077400684356689453125p835] 

; mpf : + 2332272704822485 835
; mpfd: + 2332272704822485 835 (3.47761e+251) class: Pos. norm. non-zero
; hwf : + 2332272704822485 835 (3.47761e+251) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101000010 #b1000010010010011000010001110000101110001110011010101)))
(assert (= r (fp #b0 #b11101000010 #b1000010010010011000010001110000101110001110011010101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
