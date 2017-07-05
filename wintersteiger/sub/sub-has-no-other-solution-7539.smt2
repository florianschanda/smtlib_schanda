(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4467868849830984867566030516172759234905242919921875p928 {+ 2012149248723907 928 (3.28277e+279)}
; Y = 1.3306560679653784973197616636753082275390625p747 {+ 1489142544476672 747 (9.85082e+224)}
; 1.4467868849830984867566030516172759234905242919921875p928 - 1.3306560679653784973197616636753082275390625p747 == 1.4467868849830984867566030516172759234905242919921875p928
; [HW: 1.4467868849830984867566030516172759234905242919921875p928] 

; mpf : + 2012149248723907 928
; mpfd: + 2012149248723907 928 (3.28277e+279) class: Pos. norm. non-zero
; hwf : + 2012149248723907 928 (3.28277e+279) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110011111 #b0111001001100000101000000001001101001000101111000011)))
(assert (= y (fp #b0 #b11011101010 #b0101010010100101111000000100011000100010101000000000)))
(assert (= r (fp #b0 #b11110011111 #b0111001001100000101000000001001101001000101111000011)))
(assert  (not (= (fp.sub roundTowardPositive x y) r)))
(check-sat)
(exit)
