(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9254777326064977938102629195782355964183807373046875p932 {+ 4167981171706315 932 (6.99028e+280)}
; Y = -1.3402433802702991005872945606824941933155059814453125p392 {- 1532319960600597 392 (-1.35189e+118)}
; 1.9254777326064977938102629195782355964183807373046875p932 > -1.3402433802702991005872945606824941933155059814453125p392 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110100011 #b1110110011101100000110111101001010111000100111001011)))
(assert (= y (fp #b1 #b10110000111 #b0101011100011010001100001010111011110001000000010101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
