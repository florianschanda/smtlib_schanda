(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6040720379673854001367772070807404816150665283203125p724 {- 2720498605094853 724 (-1.4156e+218)}
; Y = -1.57976619983821375825527866254560649394989013671875p433 {- 2611034841553388 433 (-3.50414e+130)}
; Z = 1.316217810277308775113169758697040379047393798828125p766 {+ 1424118412532802 766 (5.10863e+230)}
; -1.6040720379673854001367772070807404816150665283203125p724 x -1.57976619983821375825527866254560649394989013671875p433 1.316217810277308775113169758697040379047393798828125p766 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011010011 #b1001101010100100011101110000111101111111011111000101)))
(assert (= y (fp #b1 #b10110110000 #b1001010001101011100011101100001110100001100111101100)))
(assert (= z (fp #b0 #b11011111101 #b0101000011110011101001101000000110001101110001000010)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.fma roundNearestTiesToEven x y z) r))
(check-sat)
(exit)
