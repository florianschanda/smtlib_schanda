(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.85368881561657428136413727770559489727020263671875p-1001 {+ 3844672631901164 -1001 (8.6499e-302)}
; Y = -1.2981847611167041112167908067931421101093292236328125p-566 {- 1342904779052749 -566 (-5.37476e-171)}
; 1.85368881561657428136413727770559489727020263671875p-1001 < -1.2981847611167041112167908067931421101093292236328125p-566 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000010110 #b1101101010001011010110011010100000001000101111101100)))
(assert (= y (fp #b1 #b00111001001 #b0100110001010101110101100010010100101001011011001101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
