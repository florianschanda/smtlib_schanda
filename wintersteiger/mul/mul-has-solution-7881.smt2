(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4409524395691912790340438732528127729892730712890625p-875 {+ 1985873242531921 -875 (5.7201e-264)}
; Y = 1.246271270135825393055029053357429802417755126953125p-808 {+ 1109107200415762 -808 (7.30089e-244)}
; 1.4409524395691912790340438732528127729892730712890625p-875 * 1.246271270135825393055029053357429802417755126953125p-808 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010010100 #b0111000011100010010000100101001100001010100001010001)))
(assert (= y (fp #b0 #b00011010111 #b0011111100001011101000100100101100101101100000010010)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)
