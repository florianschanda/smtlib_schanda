(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.31073153803202746559009028715081512928009033203125p-743 {- 1399410438893300 -743 (-2.83287e-224)}
; Y = 1.1665230467911225087362936392310075461864471435546875p540 {+ 749953131477099 540 (4.19847e+162)}
; -1.31073153803202746559009028715081512928009033203125p-743 > 1.1665230467911225087362936392310075461864471435546875p540 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100011000 #b0100111110001100000110100010000110101110111011110100)))
(assert (= y (fp #b0 #b11000011011 #b0010101010100001010000010001111111111111100001101011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
