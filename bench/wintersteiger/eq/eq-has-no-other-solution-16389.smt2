(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9084999910080602258943827109760604798793792724609375p-1003 {+ 4091520220969999 -1003 (2.22642e-302)}
; Y = -1.34390297491435095622591688879765570163726806640625p-691 {- 1548801309675876 -691 (-1.3081e-208)}
; 1.9084999910080602258943827109760604798793792724609375p-1003 = -1.34390297491435095622591688879765570163726806640625p-691 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000010100 #b1110100010010011011101001001010111001011110000001111)))
(assert (= y (fp #b1 #b00101001100 #b0101100000001010000001100111111001000001000101100100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
