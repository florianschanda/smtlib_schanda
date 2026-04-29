(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6964827171036860331554407821386121213436126708984375p-891 {- 3136679305218151 -891 (-1.0276e-268)}
; Y = -1.900885039820020327994143372052349150180816650390625p770 {- 4057225529637098 770 (-1.18046e+232)}
; -1.6964827171036860331554407821386121213436126708984375p-891 / -1.900885039820020327994143372052349150180816650390625p770 == +zero
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
(assert (= x (fp #b1 #b00010000100 #b1011001001001100101100001111110000110000100001100111)))
(assert (= y (fp #b1 #b11100000001 #b1110011010100000011001101110011101111011100011101010)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardZero x y) r))
(check-sat)
(exit)
