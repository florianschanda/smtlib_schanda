(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6025132723884449870155322059872560203075408935546875p-874 {+ 2713478549014379 -874 (1.27229e-263)}
; 1.6025132723884449870155322059872560203075408935546875p-874 | == 1.6025132723884449870155322059872560203075408935546875p-874
; [HW: 1.6025132723884449870155322059872560203075408935546875p-874] 

; mpf : + 2713478549014379 -874
; mpfd: + 2713478549014379 -874 (1.27229e-263) class: Pos. norm. non-zero
; hwf : + 2713478549014379 -874 (1.27229e-263) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010010101 #b1001101000111110010011110101000001010000011101101011)))
(assert (= r (fp #b0 #b00010010101 #b1001101000111110010011110101000001010000011101101011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
