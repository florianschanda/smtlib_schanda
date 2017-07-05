(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1444351959340142155241437649237923324108123779296875p215 {+ 650478294587611 215 (6.02615e+064)}
; Y = -1.86117999470423445274036566843278706073760986328125p-731 {- 3878409903248916 -731 (-1.64764e-220)}
; 1.1444351959340142155241437649237923324108123779296875p215 < -1.86117999470423445274036566843278706073760986328125p-731 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011010110 #b0010010011111001101101000111101011101101100011011011)))
(assert (= y (fp #b1 #b00100100100 #b1101110001110110010010101100100100111001011000010100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
