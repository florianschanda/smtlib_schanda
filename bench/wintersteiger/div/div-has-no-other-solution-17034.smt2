(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.1098955842201758681397905093035660684108734130859375p853 {- 494925712143647 853 (-6.66605e+256)}
; Y = 1.46119071896836860702251215116120874881744384765625p-257 {+ 2077018350092676 -257 (6.30954e-078)}
; -1.1098955842201758681397905093035660684108734130859375p853 / 1.46119071896836860702251215116120874881744384765625p-257 == -oo
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
(assert (= x (fp #b1 #b11101010100 #b0001110000100010000111011111010000110011010100011111)))
(assert (= y (fp #b0 #b01011111110 #b0111011000010000100110000100111100110000000110000100)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.div roundTowardNegative x y) r)))
(check-sat)
(exit)
