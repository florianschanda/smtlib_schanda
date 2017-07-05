(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.31030866387493905023120532860048115253448486328125p-977 {+ 1397505982997012 -977 (1.02581e-294)}
; Y = 1.85049037991226850152770566637627780437469482421875p-793 {+ 3830268158055084 -793 (3.55222e-239)}
; 1.31030866387493905023120532860048115253448486328125p-977 m 1.85049037991226850152770566637627780437469482421875p-793 == 1.31030866387493905023120532860048115253448486328125p-977
; [HW: 1.31030866387493905023120532860048115253448486328125p-977] 

; mpf : + 1397505982997012 -977
; mpfd: + 1397505982997012 -977 (1.02581e-294) class: Pos. norm. non-zero
; hwf : + 1397505982997012 -977 (1.02581e-294) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000101110 #b0100111101110000011000110111101100000010001000010100)))
(assert (= y (fp #b0 #b00011100110 #b1101100110111001101111001100111101001001001010101100)))
(assert (= r (fp #b0 #b00000101110 #b0100111101110000011000110111101100000010001000010100)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
