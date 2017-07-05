(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9005362770082465662113690996193327009677886962890625p967 {+ 4055654841567953 967 (2.37073e+291)}
; Y = -1.8232594806409678778180705194245092570781707763671875p551 {- 3707631090243891 551 (-1.34393e+166)}
; 1.9005362770082465662113690996193327009677886962890625p967 / -1.8232594806409678778180705194245092570781707763671875p551 == -1.0423838719544800124339190006139688193798065185546875p416
; [HW: -1.0423838719544800124339190006139688193798065185546875p416] 

; mpf : - 190879989940715 416
; mpfd: - 190879989940715 416 (-1.76403e+125) class: Neg. norm. non-zero
; hwf : - 190879989940715 416 (-1.76403e+125) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111000110 #b1110011010001001100010111010001010011100101011010001)))
(assert (= y (fp #b1 #b11000100110 #b1101001011000001001000100010000101111001100100110011)))
(assert (= r (fp #b1 #b10110011111 #b0000101011011001101010110101111111101100000111101011)))
(assert  (not (= (fp.div roundTowardPositive x y) r)))
(check-sat)
(exit)
