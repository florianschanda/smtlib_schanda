(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.81179383884917921676560581545345485210418701171875p-504 {+ 3655994430142828 -504 (3.45932e-152)}
; Y = 1.005535673198761248414712099474854767322540283203125p-458 {+ 24930455755186 -458 (1.35101e-138)}
; 1.81179383884917921676560581545345485210418701171875p-504 = 1.005535673198761248414712099474854767322540283203125p-458 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000000111 #b1100111111010001101110001001010011110011100101101100)))
(assert (= y (fp #b0 #b01000110101 #b0000000101101010110010010010111101011001100110110010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
