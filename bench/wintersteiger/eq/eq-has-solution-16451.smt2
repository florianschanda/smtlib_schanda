(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.63420461287861851218394804163835942745208740234375p-665 {- 2856203658236796 -665 (-1.06748e-200)}
; Y = 1.77368623929470370370609089150093495845794677734375p-864 {+ 3484373058989308 -864 (1.44198e-260)}
; -1.63420461287861851218394804163835942745208740234375p-665 = 1.77368623929470370370609089150093495845794677734375p-864 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101100110 #b1010001001011011001110111100011101001001001101111100)))
(assert (= y (fp #b0 #b00010011111 #b1100011000010000010011010010011100100010110011111100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
