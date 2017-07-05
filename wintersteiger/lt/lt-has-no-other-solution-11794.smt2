(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6660121764509157049616305812378413975238800048828125p946 {+ 2999452189688557 946 (9.90955e+284)}
; Y = 1.453567559230069416997821463155560195446014404296875p193 {+ 2042686690735886 193 (1.82484e+058)}
; 1.6660121764509157049616305812378413975238800048828125p946 < 1.453567559230069416997821463155560195446014404296875p193 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110110001 #b1010101001111111110001100010010010011000001011101101)))
(assert (= y (fp #b0 #b10011000000 #b0111010000011101000000001110100101101011011100001110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
