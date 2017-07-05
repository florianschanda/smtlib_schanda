(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.582884522418492423412317293696105480194091796875p-772 {+ 2625078517963952 -772 (6.37225e-233)}
; Y = 1.425157793885605261863247505971230566501617431640625p500 {+ 1914740482116874 500 (4.6651e+150)}
; 1.582884522418492423412317293696105480194091796875p-772 < 1.425157793885605261863247505971230566501617431640625p500 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011111011 #b1001010100110111111010111000100100100001110010110000)))
(assert (= y (fp #b0 #b10111110011 #b0110110011010111001001000010010001100000110100001010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
