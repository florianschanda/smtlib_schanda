(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7001023345686256948994241611217148602008819580078125p-637 {- 3152980613084477 -637 (-2.98104e-192)}
; Y = -1.3664754682491064841087791137397289276123046875p-425 {- 1650458782247104 -425 (-1.57708e-128)}
; -1.7001023345686256948994241611217148602008819580078125p-637 M -1.3664754682491064841087791137397289276123046875p-425 == -1.7001023345686256948994241611217148602008819580078125p-637
; [HW: -1.7001023345686256948994241611217148602008819580078125p-637] 

; mpf : - 3152980613084477 -637
; mpfd: - 3152980613084477 -637 (-2.98104e-192) class: Neg. norm. non-zero
; hwf : - 3152980613084477 -637 (-2.98104e-192) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110000010 #b1011001100111001111010000001011011010011010100111101)))
(assert (= y (fp #b1 #b01001010110 #b0101110111010001010101100001011011101010100011000000)))
(assert (= r (fp #b1 #b00110000010 #b1011001100111001111010000001011011010011010100111101)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
