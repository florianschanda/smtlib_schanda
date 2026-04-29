(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.859004472548889452809817157685756683349609375p-909 {+ 3868612222480768 -909 (4.29551e-274)}
; 1.859004472548889452809817157685756683349609375p-909 S == 1.9282139261756665593594561869394965469837188720703125p-455
; [HW: 1.9282139261756665593594561869394965469837188720703125p-455] 

; mpf : + 4180303892044837 -455
; mpfd: + 4180303892044837 -455 (2.07256e-137) class: Pos. norm. non-zero
; hwf : + 4180303892044837 -455 (2.07256e-137) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001110010 #b1101101111100111101101111001010010110111000110000000)))
(assert (= r (fp #b0 #b01000111000 #b1110110110011111011011011000100010011101110000100101)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
