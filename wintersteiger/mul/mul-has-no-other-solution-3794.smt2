(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6250355902170563471287323409342207014560699462890625p-601 {- 2814910051194833 -601 (-1.9581e-181)}
; Y = 1.863035177793232577414528350345790386199951171875p295 {+ 3886764905117232 295 (1.18596e+089)}
; -1.6250355902170563471287323409342207014560699462890625p-601 * 1.863035177793232577414528350345790386199951171875p295 == -1.5137492348701819810941060495679266750812530517578125p-305
; [HW: -1.5137492348701819810941060495679266750812530517578125p-305] 

; mpf : - 2313720862723229 -305
; mpfd: - 2313720862723229 -305 (-2.32223e-092) class: Neg. norm. non-zero
; hwf : - 2313720862723229 -305 (-2.32223e-092) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110100110 #b1010000000000010010101010001101011010001011111010001)))
(assert (= y (fp #b0 #b10100100110 #b1101110011101111110111111001011111101011011000110000)))
(assert (= r (fp #b1 #b01011001110 #b1000001110000101000100011110001000011100110010011101)))
(assert  (not (= (fp.mul roundTowardPositive x y) r)))
(check-sat)
(exit)
