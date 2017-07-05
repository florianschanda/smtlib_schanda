(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.52522381344733304331384715624153614044189453125p901 {+ 2365397770527520 901 (2.57846e+271)}
; Y = 1.4592402088696065920458977416274137794971466064453125p-359 {+ 2068234033538709 -359 (1.24268e-108)}
; 1.52522381344733304331384715624153614044189453125p901 = 1.4592402088696065920458977416274137794971466064453125p-359 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110000100 #b1000011001110101000100010101110111010110001100100000)))
(assert (= y (fp #b0 #b01010011000 #b0111010110010000110001000010111000011010011010010101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
