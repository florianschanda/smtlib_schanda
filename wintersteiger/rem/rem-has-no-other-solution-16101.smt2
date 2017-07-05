(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7888412258712416136319234283291734755039215087890625p559 {+ 3552625050888209 559 (3.37551e+168)}
; Y = 1.0004589968481594208782325949869118630886077880859375p-41 {+ 2067138034335 -41 (4.54956e-013)}
; 1.7888412258712416136319234283291734755039215087890625p559 % 1.0004589968481594208782325949869118630886077880859375p-41 == 1.979229920483930982300080358982086181640625p-44
; [HW: 1.979229920483930982300080358982086181640625p-44] 

; mpf : + 4410059505001472 -44
; mpfd: + 4410059505001472 -44 (1.12506e-013) class: Pos. norm. non-zero
; hwf : + 4410059505001472 -44 (1.12506e-013) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000101110 #b1100100111110001011111111010001011011010100000010001)))
(assert (= y (fp #b0 #b01111010110 #b0000000000011110000101001011000001110011101010011111)))
(assert (= r (fp #b0 #b01111010011 #xfaaecfe3be400)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
