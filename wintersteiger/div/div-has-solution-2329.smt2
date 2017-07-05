(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5182119974518426541720828026882372796535491943359375p716 {- 2333819358623039 716 (-5.23371e+215)}
; Y = 1.6118174450452773527331373770721256732940673828125p-1017 {+ 2755380817524680 -1017 (1.14765e-306)}
; -1.5182119974518426541720828026882372796535491943359375p716 / 1.6118174450452773527331373770721256732940673828125p-1017 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011001011 #b1000010010101001100010101001110101110011010100111111)))
(assert (= y (fp #b0 #b00000000110 #b1001110010100000000100010110110110010111011111001000)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)
