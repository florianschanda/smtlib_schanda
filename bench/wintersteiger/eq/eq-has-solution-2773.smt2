(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9976831597133151152689833907061256468296051025390625p3 {- 4493165506318705 3 (-15.9815)}
; Y = 1.5519545616950665145594712157617323100566864013671875p-549 {+ 2485782358375347 -549 (8.42193e-166)}
; -1.9976831597133151152689833907061256468296051025390625p3 = 1.5519545616950665145594712157617323100566864013671875p-549 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000000010 #b1111111101101000001010011101111010111101000101110001)))
(assert (= y (fp #b0 #b00111011010 #b1000110101001100111001001110011101011011101110110011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
