(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7087897035487518149210472984123043715953826904296875p909 {+ 3192105044786203 909 (7.39528e+273)}
; 1.7087897035487518149210472984123043715953826904296875p909 S == 1.8486696316804425155311264461488462984561920166015625p454
; [HW: 1.8486696316804425155311264461488462984561920166015625p454] 

; mpf : + 3822068236996697 454
; mpfd: + 3822068236996697 454 (8.59958e+136) class: Pos. norm. non-zero
; hwf : + 3822068236996697 454 (8.59958e+136) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110001100 #b1011010101110011001111011111010001111011110000011011)))
(assert (= r (fp #b0 #b10111000101 #b1101100101000010011010011011100100101101000001011001)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
