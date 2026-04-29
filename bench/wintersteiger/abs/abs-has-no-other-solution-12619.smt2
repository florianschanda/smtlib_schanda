(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2223389229039509640273308832547627389430999755859375p447 {+ 1001325490340191 447 (4.44222e+134)}
; 1.2223389229039509640273308832547627389430999755859375p447 | == 1.2223389229039509640273308832547627389430999755859375p447
; [HW: 1.2223389229039509640273308832547627389430999755859375p447] 

; mpf : + 1001325490340191 447
; mpfd: + 1001325490340191 447 (4.44222e+134) class: Pos. norm. non-zero
; hwf : + 1001325490340191 447 (4.44222e+134) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110111110 #b0011100011101011001101000010001010000000000101011111)))
(assert (= r (fp #b0 #b10110111110 #b0011100011101011001101000010001010000000000101011111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
