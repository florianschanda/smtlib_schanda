(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3571758334316632588212314658449031412601470947265625p691 {- 1608576950348585 691 (-1.39432e+208)}
; Y = 1.2506190166486998993633505961042828857898712158203125p-426 {+ 1128687709991045 -426 (7.21684e-129)}
; -1.3571758334316632588212314658449031412601470947265625p691 % 1.2506190166486998993633505961042828857898712158203125p-426 == -1.094601694779871792206904501654207706451416015625p-428
; [HW: -1.094601694779871792206904501654207706451416015625p-428] 

; mpf : - 426048157359248 -428
; mpfd: - 426048157359248 -428 (-1.57913e-129) class: Neg. norm. non-zero
; hwf : - 426048157359248 -428 (-1.57913e-129) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010110010 #b0101101101101111111000000001101110000010101100101001)))
(assert (= y (fp #b0 #b01001010101 #b0100000000101000100100010110000001000011000010000101)))
(assert (= r (fp #b1 #b01001010011 #x1837d11139c90)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
