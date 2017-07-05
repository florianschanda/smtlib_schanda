(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.45826626918428114976222786935977637767791748046875p61 {+ 2063847799134796 61 (3.36253e+018)}
; 1.45826626918428114976222786935977637767791748046875p61 | == 1.45826626918428114976222786935977637767791748046875p61
; [HW: 1.45826626918428114976222786935977637767791748046875p61] 

; mpf : + 2063847799134796 61
; mpfd: + 2063847799134796 61 (3.36253e+018) class: Pos. norm. non-zero
; hwf : + 2063847799134796 61 (3.36253e+018) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000111100 #b0111010101010000111100000010111100000001101001001100)))
(assert (= r (fp #b0 #b10000111100 #b0111010101010000111100000010111100000001101001001100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
