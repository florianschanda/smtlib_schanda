(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.04157753774574057814561456325463950634002685546875p-902 {+ 187248583498700 -902 (3.0806e-272)}
; Y = -1.448081151649128539560251738294027745723724365234375p660 {- 2017978107598758 660 (-6.92772e+198)}
; 1.04157753774574057814561456325463950634002685546875p-902 < -1.448081151649128539560251738294027745723724365234375p660 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001111001 #b0000101010100100110100110101010011011101101111001100)))
(assert (= y (fp #b1 #b11010010011 #b0111001010110101011100100100010001001001011110100110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
