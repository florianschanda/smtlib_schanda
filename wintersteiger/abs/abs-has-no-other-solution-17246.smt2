(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9626440906890374460402881595655344426631927490234375p-1007 {+ 4335363568117559 -1007 (1.43099e-303)}
; 1.9626440906890374460402881595655344426631927490234375p-1007 | == 1.9626440906890374460402881595655344426631927490234375p-1007
; [HW: 1.9626440906890374460402881595655344426631927490234375p-1007] 

; mpf : + 4335363568117559 -1007
; mpfd: + 4335363568117559 -1007 (1.43099e-303) class: Pos. norm. non-zero
; hwf : + 4335363568117559 -1007 (1.43099e-303) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000010000 #b1111011001101111110101111101011100110010011100110111)))
(assert (= r (fp #b0 #b00000010000 #b1111011001101111110101111101011100110010011100110111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
