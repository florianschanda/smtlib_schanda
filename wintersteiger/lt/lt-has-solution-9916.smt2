(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3068141562040269665345704197534359991550445556640625p-20 {- 1381768119552449 -20 (-1.24628e-006)}
; Y = -1.272135578436717207040373978088609874248504638671875p-618 {- 1225589689641854 -618 (-1.16949e-186)}
; -1.3068141562040269665345704197534359991550445556640625p-20 < -1.272135578436717207040373978088609874248504638671875p-618 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111101011 #b0100111010001011010111110101111011011000100111000001)))
(assert (= y (fp #b1 #b00110010101 #b0100010110101010101011010110000101110110101101111110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
