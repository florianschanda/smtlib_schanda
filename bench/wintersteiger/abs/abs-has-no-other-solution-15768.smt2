(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.810719144050035200876891394727863371372222900390625p965 {+ 3651154435045866 965 (5.64673e+290)}
; 1.810719144050035200876891394727863371372222900390625p965 | == 1.810719144050035200876891394727863371372222900390625p965
; [HW: 1.810719144050035200876891394727863371372222900390625p965] 

; mpf : + 3651154435045866 965
; mpfd: + 3651154435045866 965 (5.64673e+290) class: Pos. norm. non-zero
; hwf : + 3651154435045866 965 (5.64673e+290) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111000100 #b1100111110001011010010100011000111101111100111101010)))
(assert (= r (fp #b0 #b11111000100 #b1100111110001011010010100011000111101111100111101010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
