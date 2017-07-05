(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3064388179221702035448515744064934551715850830078125p-995 {- 1380077746206141 -995 (-3.90161e-300)}
; -1.3064388179221702035448515744064934551715850830078125p-995 | == 1.3064388179221702035448515744064934551715850830078125p-995
; [HW: 1.3064388179221702035448515744064934551715850830078125p-995] 

; mpf : + 1380077746206141 -995
; mpfd: + 1380077746206141 -995 (3.90161e-300) class: Pos. norm. non-zero
; hwf : + 1380077746206141 -995 (3.90161e-300) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000011100 #b0100111001110010110001100011110100110011010110111101)))
(assert (= r (fp #b0 #b00000011100 #b0100111001110010110001100011110100110011010110111101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
