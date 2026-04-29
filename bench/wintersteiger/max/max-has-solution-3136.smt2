(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.39303818004144996933746369904838502407073974609375p326 {+ 1770086601177052 326 (1.90433e+098)}
; Y = +zero {+ 0 -1023 (0)}
; 1.39303818004144996933746369904838502407073974609375p326 M +zero == 1.39303818004144996933746369904838502407073974609375p326
; [HW: 1.39303818004144996933746369904838502407073974609375p326] 

; mpf : + 1770086601177052 326
; mpfd: + 1770086601177052 326 (1.90433e+098) class: Pos. norm. non-zero
; hwf : + 1770086601177052 326 (1.90433e+098) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101000101 #b0110010010011110001001100111000101011011011111011100)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b0 #b10101000101 #b0110010010011110001001100111000101011011011111011100)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
