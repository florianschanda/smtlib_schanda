(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8444950177868923990587290973053313791751861572265625p-903 {- 3803267447421289 -903 (-2.72767e-272)}
; Y = 1.66839591909132156644091082853265106678009033203125p-31 {+ 3010187612155636 -31 (7.76907e-010)}
; -1.8444950177868923990587290973053313791751861572265625p-903 > 1.66839591909132156644091082853265106678009033203125p-31 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001111000 #b1101100000110000110100110101001100000111100101101001)))
(assert (= y (fp #b0 #b01111100000 #b1010101100011011111111101011010101000110111011110100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
