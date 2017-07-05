(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2729476085528250717260334567981772124767303466796875p-581 {- 1229246748170171 -581 (-1.60836e-175)}
; Y = 1.2821260525856335021899212733842432498931884765625p-363 {+ 1270582785296168 -363 (6.82405e-110)}
; Z = 1.7530222917167892493495173766859807074069976806640625p-113 {+ 3391310912377409 -113 (1.6881e-034)}
; -1.2729476085528250717260334567981772124767303466796875p-581 x 1.2821260525856335021899212733842432498931884765625p-363 1.7530222917167892493495173766859807074069976806640625p-113 == 1.7530222917167890273049124516546726226806640625p-113
; [HW: 1.7530222917167890273049124516546726226806640625p-113] 

; mpf : + 3391310912377408 -113
; mpfd: + 3391310912377408 -113 (1.6881e-034) class: Pos. norm. non-zero
; hwf : + 3391310912377408 -113 (1.6881e-034) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110111010 #b0100010111011111111001001111110001000001011110111011)))
(assert (= y (fp #b0 #b01010010100 #b0100100000111001011010011011100100110100011100101000)))
(assert (= z (fp #b0 #b01110001110 #b1100000011000110000100011010010000010101001001000001)))
(assert (= r (fp #b0 #b01110001110 #b1100000011000110000100011010010000010101001001000000)))
(assert  (not (= (fp.fma roundTowardNegative x y z) r)))
(check-sat)
(exit)
