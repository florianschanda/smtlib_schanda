(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5059744190099764171719698424567468464374542236328125p944 {+ 2278706204912333 944 (2.23941e+284)}
; 1.5059744190099764171719698424567468464374542236328125p944 S == 1.22718149391602882047891398542560636997222900390625p472
; [HW: 1.22718149391602882047891398542560636997222900390625p472] 

; mpf : + 1023134491345700 472
; mpfd: + 1023134491345700 472 (1.49647e+142) class: Pos. norm. non-zero
; hwf : + 1023134491345700 472 (1.49647e+142) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110101111 #b1000000110000111100010100001111001000010101011001101)))
(assert (= r (fp #b0 #b10111010111 #b0011101000101000100100001111111010100000001100100100)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
