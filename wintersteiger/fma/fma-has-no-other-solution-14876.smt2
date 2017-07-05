(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8337805273422247420711528320680372416973114013671875p-345 {+ 3755013672247219 -345 (2.55858e-104)}
; Y = 1.379393647719885596103495117858983576297760009765625p-429 {+ 1708637090498010 -429 (9.94993e-130)}
; Z = 1.6688164376732397276015262832515873014926910400390625p274 {+ 3012081459484465 274 (5.06556e+082)}
; 1.8337805273422247420711528320680372416973114013671875p-345 x 1.379393647719885596103495117858983576297760009765625p-429 1.6688164376732397276015262832515873014926910400390625p274 == 1.6688164376732397276015262832515873014926910400390625p274
; [HW: 1.6688164376732397276015262832515873014926910400390625p274] 

; mpf : + 3012081459484465 274
; mpfd: + 3012081459484465 274 (5.06556e+082) class: Pos. norm. non-zero
; hwf : + 3012081459484465 274 (5.06556e+082) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010100110 #b1101010101110010101001000000000011111001111110110011)))
(assert (= y (fp #b0 #b01001010010 #b0110000100011111111100010010110101000100010111011010)))
(assert (= z (fp #b0 #b10100010001 #b1010101100110111100011011101011011010101011100110001)))
(assert (= r (fp #b0 #b10100010001 #b1010101100110111100011011101011011010101011100110001)))
(assert  (not (= (fp.fma roundTowardNegative x y z) r)))
(check-sat)
(exit)
