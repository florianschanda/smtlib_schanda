(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.61230961424489027677964259055443108081817626953125p-876 {+ 2757597350548660 -876 (3.20016e-264)}
; Y = 1.64361780939325985428922649589367210865020751953125p-60 {+ 2898596926552500 -60 (1.42561e-018)}
; 1.61230961424489027677964259055443108081817626953125p-876 = 1.64361780939325985428922649589367210865020751953125p-60 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010010011 #b1001110011000000010100101010100000110101010010110100)))
(assert (= y (fp #b0 #b01111000011 #b1010010011000100001000110000001001110111100110110100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
