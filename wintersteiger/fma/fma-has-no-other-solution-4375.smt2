(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.190734786506996822907922251033596694469451904296875p-852 {- 858993113439502 -852 (-3.96514e-257)}
; Y = -1.043113219428370097574543251539580523967742919921875p118 {- 194164678952350 118 (-3.46634e+035)}
; Z = -1.0854793077001014811600043685757555067539215087890625p-352 {- 384964578306065 -352 (-1.18321e-106)}
; -1.190734786506996822907922251033596694469451904296875p-852 x -1.043113219428370097574543251539580523967742919921875p118 -1.0854793077001014811600043685757555067539215087890625p-352 == -1.085479307700101259115399443544447422027587890625p-352
; [HW: -1.085479307700101259115399443544447422027587890625p-352] 

; mpf : - 384964578306064 -352
; mpfd: - 384964578306064 -352 (-1.18321e-106) class: Neg. norm. non-zero
; hwf : - 384964578306064 -352 (-1.18321e-106) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010101011 #b0011000011010011111111101011011001000001110100001110)))
(assert (= y (fp #b1 #b10001110101 #b0000101100001001011101111100101101111000010110011110)))
(assert (= z (fp #b1 #b01010011111 #b0001010111100001111110001100111100001110100000010001)))
(assert (= r (fp #b1 #b01010011111 #b0001010111100001111110001100111100001110100000010000)))
(assert  (not (= (fp.fma roundTowardZero x y z) r)))
(check-sat)
(exit)
