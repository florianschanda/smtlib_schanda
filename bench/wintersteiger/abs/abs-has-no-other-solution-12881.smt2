(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.400600795343553528482516412623226642608642578125p631 {+ 1804145592633552 631 (1.24808e+190)}
; 1.400600795343553528482516412623226642608642578125p631 | == 1.400600795343553528482516412623226642608642578125p631
; [HW: 1.400600795343553528482516412623226642608642578125p631] 

; mpf : + 1804145592633552 631
; mpfd: + 1804145592633552 631 (1.24808e+190) class: Pos. norm. non-zero
; hwf : + 1804145592633552 631 (1.24808e+190) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001110110 #b0110011010001101110001100001001011000000100011010000)))
(assert (= r (fp #b0 #b11001110110 #b0110011010001101110001100001001011000000100011010000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
