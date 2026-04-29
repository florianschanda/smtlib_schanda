(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.93291199218555931338414666242897510528564453125p-576 {+ 4201462100376352 -576 (7.8151e-174)}
; 1.93291199218555931338414666242897510528564453125p-576 | == 1.93291199218555931338414666242897510528564453125p-576
; [HW: 1.93291199218555931338414666242897510528564453125p-576] 

; mpf : + 4201462100376352 -576
; mpfd: + 4201462100376352 -576 (7.8151e-174) class: Pos. norm. non-zero
; hwf : + 4201462100376352 -576 (7.8151e-174) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110111111 #b1110111011010011010100100000000001111011101100100000)))
(assert (= r (fp #b0 #b00110111111 #b1110111011010011010100100000000001111011101100100000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
