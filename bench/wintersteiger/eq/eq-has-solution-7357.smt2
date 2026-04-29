(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8790435952750266235256049185409210622310638427734375p584 {- 3958860408123031 584 (-1.18975e+176)}
; Y = -1.190713541510107109644422962446697056293487548828125p973 {- 858897434479426 973 (-9.5059e+292)}
; -1.8790435952750266235256049185409210622310638427734375p584 = -1.190713541510107109644422962446697056293487548828125p973 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001000111 #b1110000100001001000000000100010101110110111010010111)))
(assert (= y (fp #b1 #b11111001100 #b0011000011010010100110100100011110110000101101000010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
