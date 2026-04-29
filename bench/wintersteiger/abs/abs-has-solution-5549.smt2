(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1021682163582895430664621017058379948139190673828125p-964 {+ 460124741120301 -964 (7.06858e-291)}
; 1.1021682163582895430664621017058379948139190673828125p-964 | == 1.1021682163582895430664621017058379948139190673828125p-964
; [HW: 1.1021682163582895430664621017058379948139190673828125p-964] 

; mpf : + 460124741120301 -964
; mpfd: + 460124741120301 -964 (7.06858e-291) class: Pos. norm. non-zero
; hwf : + 460124741120301 -964 (7.06858e-291) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000111011 #b0001101000100111101100100011101111110011000100101101)))
(assert (= r (fp #b0 #b00000111011 #b0001101000100111101100100011101111110011000100101101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
