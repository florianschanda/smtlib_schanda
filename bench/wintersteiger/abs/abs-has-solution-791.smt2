(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7432438119313193869430733684566803276538848876953125p-942 {- 3347272554459317 -942 (-4.68924e-284)}
; -1.7432438119313193869430733684566803276538848876953125p-942 | == 1.7432438119313193869430733684566803276538848876953125p-942
; [HW: 1.7432438119313193869430733684566803276538848876953125p-942] 

; mpf : + 3347272554459317 -942
; mpfd: + 3347272554459317 -942 (4.68924e-284) class: Pos. norm. non-zero
; hwf : + 3347272554459317 -942 (4.68924e-284) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001010001 #b1011111001000101001110011111100100110011000010110101)))
(assert (= r (fp #b0 #b00001010001 #b1011111001000101001110011111100100110011000010110101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
