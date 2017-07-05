(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5111592796079900136163587376358918845653533935546875p-582 {+ 2302056741169515 -582 (9.54669e-176)}
; Y = 1.1140964330503562162988373529515229165554046630859375p-747 {+ 513844653369887 -747 (1.50493e-225)}
; 1.5111592796079900136163587376358918845653533935546875p-582 * 1.1140964330503562162988373529515229165554046630859375p-747 == +zero
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
(assert (= x (fp #b0 #b00110111001 #b1000001011011011010101011010010011110110100101101011)))
(assert (= y (fp #b0 #b00100010100 #b0001110100110101011011001000000010001010101000011111)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardZero x y) r))
(check-sat)
(exit)
