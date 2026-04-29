(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6335315545612487664328682512859813868999481201171875p890 {- 2853172473049491 890 (-1.34842e+268)}
; Y = 1.9446306704467544168579706820310093462467193603515625p-878 {+ 4254238335426745 -878 (9.64941e-265)}
; -1.6335315545612487664328682512859813868999481201171875p890 / 1.9446306704467544168579706820310093462467193603515625p-878 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101111001 #b1010001000101111000111111011101111010011000110010011)))
(assert (= y (fp #b0 #b00010010001 #b1111000111010011010100001100110001011110000010111001)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
