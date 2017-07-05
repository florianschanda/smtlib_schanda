(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.34386098338247972350245618144981563091278076171875p410 {- 1548612196628588 410 (-3.55347e+123)}
; Y = 1.765042408224027692398294675513170659542083740234375p617 {+ 3445444704600358 617 (9.59981e+185)}
; -1.34386098338247972350245618144981563091278076171875p410 * 1.765042408224027692398294675513170659542083740234375p617 == -oo
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
(assert (= x (fp #b1 #b10110011001 #b0101100000000111010001011111110111111111100001101100)))
(assert (= y (fp #b0 #b11001101000 #b1100001111011001110100011011101101100000000100100110)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)
