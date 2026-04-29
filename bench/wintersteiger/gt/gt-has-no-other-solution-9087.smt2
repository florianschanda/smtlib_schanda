(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.321389575617767153659087853156961500644683837890625p504 {+ 1447409972992938 504 (6.92068e+151)}
; Y = 1.968902854008182767842072280473075807094573974609375p-827 {+ 4363550532269462 -827 (2.19998e-249)}
; 1.321389575617767153659087853156961500644683837890625p504 > 1.968902854008182767842072280473075807094573974609375p-827 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111110111 #b0101001001000110100101100101010010001101101110101010)))
(assert (= y (fp #b0 #b00011000100 #b1111100000001010000001000111011011110111010110010110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
