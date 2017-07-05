(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9012298708261667901098235233803279697895050048828125p-638 {- 4058778510427885 -638 (-1.66685e-192)}
; Y = 1.587154709693361365197006307425908744335174560546875p596 {+ 2644309731783854 596 (4.1162e+179)}
; -1.9012298708261667901098235233803279697895050048828125p-638 % 1.587154709693361365197006307425908744335174560546875p596 == -1.9012298708261667901098235233803279697895050048828125p-638
; [HW: -1.9012298708261667901098235233803279697895050048828125p-638] 

; mpf : - 4058778510427885 -638
; mpfd: - 4058778510427885 -638 (-1.66685e-192) class: Neg. norm. non-zero
; hwf : - 4058778510427885 -638 (-1.66685e-192) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110000001 #b1110011010110111000000000011010101100000011011101101)))
(assert (= y (fp #b0 #b11001010011 #b1001011001001111110001010110001111010011010010101110)))
(assert (= r (fp #b1 #b00110000001 #xe6b70035606ed)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
