(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5590059267835363332466158681199885904788970947265625p952 {+ 2517538883560233 952 (5.93477e+286)}
; 1.5590059267835363332466158681199885904788970947265625p952 | == 1.5590059267835363332466158681199885904788970947265625p952
; [HW: 1.5590059267835363332466158681199885904788970947265625p952] 

; mpf : + 2517538883560233 952
; mpfd: + 2517538883560233 952 (5.93477e+286) class: Pos. norm. non-zero
; hwf : + 2517538883560233 952 (5.93477e+286) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110110111 #b1000111100011011000000110010110111001110001100101001)))
(assert (= r (fp #b0 #b11110110111 #b1000111100011011000000110010110111001110001100101001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
