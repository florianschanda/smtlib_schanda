(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.193970750725006357839674819842912256717681884765625p330 {- 873566600685914 330 (-2.61151e+099)}
; Y = -1.90445887410864411748434577020816504955291748046875p-139 {- 4073320648407628 -139 (-2.73276e-042)}
; -1.193970750725006357839674819842912256717681884765625p330 > -1.90445887410864411748434577020816504955291748046875p-139 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101001001 #b0011000110101000000100010010111010111110100101011010)))
(assert (= y (fp #b1 #b01101110100 #b1110011110001010100111011110010011011111101001001100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
