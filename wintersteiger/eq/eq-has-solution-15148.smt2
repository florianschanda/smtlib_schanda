(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.444931870049765532115770838572643697261810302734375p-290 {- 2003795004161382 -290 (-7.26354e-088)}
; Y = -1.9372444664289101279308624725672416388988494873046875p-204 {- 4220973829764299 -204 (-7.53469e-062)}
; -1.444931870049765532115770838572643697261810302734375p-290 = -1.9372444664289101279308624725672416388988494873046875p-204 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011011101 #b0111000111100111000011100001011011001111110101100110)))
(assert (= y (fp #b1 #b01100110011 #b1110111111101111010000001101101110101011010011001011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
