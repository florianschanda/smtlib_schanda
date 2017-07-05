(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.826311253421792901718845314462669193744659423828125p-1 {+ 3721375053002434 -1 (0.913156)}
; 1.826311253421792901718845314462669193744659423828125p-1 | == 1.826311253421792901718845314462669193744659423828125p-1
; [HW: 1.826311253421792901718845314462669193744659423828125p-1] 

; mpf : + 3721375053002434 -1
; mpfd: + 3721375053002434 -1 (0.913156) class: Pos. norm. non-zero
; hwf : + 3721375053002434 -1 (0.913156) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111111110 #b1101001110001001001000100110000111000011011011000010)))
(assert (= r (fp #b0 #b01111111110 #b1101001110001001001000100110000111000011011011000010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
