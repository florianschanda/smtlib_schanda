(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0269115058955027297571405142662115395069122314453125p-388 {+ 121198647922965 -388 (1.6289e-117)}
; Y = 1.4603095431270192161576915168552659451961517333984375p302 {+ 2073049886901927 302 (1.18988e+091)}
; 1.0269115058955027297571405142662115395069122314453125p-388 > 1.4603095431270192161576915168552659451961517333984375p302 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001111011 #b0000011011100011101011000010010110110101000100010101)))
(assert (= y (fp #b0 #b10100101101 #b0111010111010110110110001010000111000100011010100111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
