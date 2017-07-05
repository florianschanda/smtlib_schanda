(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.15253649075646347199608499067835509777069091796875p179 {+ 686963282931212 179 (8.83129e+053)}
; Y = 1.0180903953767117542383857653476297855377197265625p-943 {+ 81471897877544 -943 (1.36931e-284)}
; 1.15253649075646347199608499067835509777069091796875p179 M 1.0180903953767117542383857653476297855377197265625p-943 == 1.15253649075646347199608499067835509777069091796875p179
; [HW: 1.15253649075646347199608499067835509777069091796875p179] 

; mpf : + 686963282931212 179
; mpfd: + 686963282931212 179 (8.83129e+053) class: Pos. norm. non-zero
; hwf : + 686963282931212 179 (8.83129e+053) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010110010 #b0010011100001100101000011010011100111110111000001100)))
(assert (= y (fp #b0 #b00001010000 #b0000010010100001100100100111100010000011110000101000)))
(assert (= r (fp #b0 #b10010110010 #b0010011100001100101000011010011100111110111000001100)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
