(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.36581511508431763246562695712782442569732666015625p-149 {+ 1647484815980228 -149 (1.91391e-045)}
; Y = -1.5992884013015771227372852081316523253917694091796875p151 {- 2698955020789243 151 (-4.56516e+045)}
; Z = -1.0882563723836289337754124062485061585903167724609375p-58 {- 397471365779983 -58 (-3.77565e-018)}
; 1.36581511508431763246562695712782442569732666015625p-149 x -1.5992884013015771227372852081316523253917694091796875p151 -1.0882563723836289337754124062485061585903167724609375p-58 == -1.092166135938363868973510761861689388751983642578125p3
; [HW: -1.092166135938363868973510761861689388751983642578125p3] 

; mpf : - 415079375468194 3
; mpfd: - 415079375468194 3 (-8.73733) class: Neg. norm. non-zero
; hwf : - 415079375468194 3 (-8.73733) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101101010 #b0101110110100110000011110011001110101011011011000100)))
(assert (= y (fp #b1 #b10010010110 #b1001100101101010111101101111010001110110010111111011)))
(assert (= z (fp #b1 #b01111000101 #b0001011010010111111110000011100100001101001000001111)))
(assert (= r (fp #b1 #b10000000010 #b0001011110011000001100110010101110100111011010100010)))
(assert (= (fp.fma roundTowardPositive x y z) r))
(check-sat)
(exit)
