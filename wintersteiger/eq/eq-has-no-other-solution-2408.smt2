(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4865341613279909882550100519438274204730987548828125p-877 {- 2191155067659757 -877 (-1.47526e-264)}
; Y = -1.7312314596696289914490307637606747448444366455078125p390 {- 3293173729289725 390 (-4.3657e+117)}
; -1.4865341613279909882550100519438274204730987548828125p-877 = -1.7312314596696289914490307637606747448444366455078125p390 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010010010 #b0111110010001101100000001011011101001010010111101101)))
(assert (= y (fp #b1 #b10110000101 #b1011101100110001111111000010010100010110010111111101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
