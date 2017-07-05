(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9592221619044096758699424754013307392597198486328125p115 {- 4319952570918221 115 (-8.13829e+034)}
; -1.9592221619044096758699424754013307392597198486328125p115 | == 1.9592221619044096758699424754013307392597198486328125p115
; [HW: 1.9592221619044096758699424754013307392597198486328125p115] 

; mpf : + 4319952570918221 115
; mpfd: + 4319952570918221 115 (8.13829e+034) class: Pos. norm. non-zero
; hwf : + 4319952570918221 115 (8.13829e+034) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001110010 #b1111010110001111100101010110011011111010010101001101)))
(assert (= r (fp #b0 #b10001110010 #b1111010110001111100101010110011011111010010101001101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
