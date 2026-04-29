(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.27503508537878129658338366425596177577972412109375p671 {- 1238647908025692 671 (-1.24925e+202)}
; Y = 1.356767577382058664881014919956214725971221923828125p-1 {+ 1606738328555714 -1 (0.678384)}
; -1.27503508537878129658338366425596177577972412109375p671 > 1.356767577382058664881014919956214725971221923828125p-1 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010011110 #b0100011001101000101100110000100011110100010101011100)))
(assert (= y (fp #b0 #b01111111110 #b0101101101010101000111101011010100100001000011000010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
