(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5688376033014834742829179958789609372615814208984375p863 {- 2561816818262887 863 (-9.6486e+259)}
; Y = 1.129347562340167865357898335787467658519744873046875p-380 {+ 582529633556462 -380 (4.58595e-115)}
; -1.5688376033014834742829179958789609372615814208984375p863 / 1.129347562340167865357898335787467658519744873046875p-380 == -oo
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
(assert (= x (fp #b1 #b11101011110 #b1001000110011111010101110101011011101010001101100111)))
(assert (= y (fp #b0 #b01010000011 #b0010000100011100111010111111111000010001011111101110)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)
