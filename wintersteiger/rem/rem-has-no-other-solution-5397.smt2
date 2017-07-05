(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3004537856757334424173677689395844936370849609375p379 {+ 1353123557211288 379 (1.60127e+114)}
; Y = 1.2982998687127889070325181819498538970947265625p-194 {+ 1343423177579584 -194 (5.17078e-059)}
; 1.3004537856757334424173677689395844936370849609375p379 % 1.2982998687127889070325181819498538970947265625p-194 == 1.198825036260615206629154272377490997314453125p-194
; [HW: 1.198825036260615206629154272377490997314453125p-194] 

; mpf : + 895428359215232 -194
; mpfd: + 895428359215232 -194 (4.7746e-059) class: Pos. norm. non-zero
; hwf : + 895428359215232 -194 (4.7746e-059) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101111010 #b0100110011101010100010100000111101101111110010011000)))
(assert (= y (fp #b0 #b01100111101 #b0100110001011101011000010101010010000101110001000000)))
(assert (= r (fp #b1 #b01100111001 #x9772ec0283c00)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
