(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.338260242968919211392631041235290467739105224609375p-873 {+ 1523388704189078 -873 (2.12498e-263)}
; 1.338260242968919211392631041235290467739105224609375p-873 | == 1.338260242968919211392631041235290467739105224609375p-873
; [HW: 1.338260242968919211392631041235290467739105224609375p-873] 

; mpf : + 1523388704189078 -873
; mpfd: + 1523388704189078 -873 (2.12498e-263) class: Pos. norm. non-zero
; hwf : + 1523388704189078 -873 (2.12498e-263) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010010110 #b0101011010011000001110010010100100010110101010010110)))
(assert (= r (fp #b0 #b00010010110 #b0101011010011000001110010010100100010110101010010110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
