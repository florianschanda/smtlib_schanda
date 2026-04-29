(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.39547621799447529866711192880757153034210205078125p104 {+ 1781066547993812 104 (2.83036e+031)}
; 1.39547621799447529866711192880757153034210205078125p104 S == 1.1813027630520787081280786878778599202632904052734375p52
; [HW: 1.1813027630520787081280786878778599202632904052734375p52] 

; mpf : + 816515056122583 52
; mpfd: + 816515056122583 52 (5.32011e+015) class: Pos. norm. non-zero
; hwf : + 816515056122583 52 (5.32011e+015) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001100111 #b0110010100111101111011011110111010100001110011010100)))
(assert (= r (fp #b0 #b10000110011 #b0010111001101001110110111001110111111011101011010111)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
