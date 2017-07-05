(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4267708382413173406888518002233467996120452880859375p-624 {+ 1922004988076191 -624 (2.04945e-188)}
; Y = -1.8115160187391612378604577315854839980602264404296875p480 {- 3654743239598875 480 (-5.6551e+144)}
; 1.4267708382413173406888518002233467996120452880859375p-624 - -1.8115160187391612378604577315854839980602264404296875p480 == 1.8115160187391612378604577315854839980602264404296875p480
; [HW: 1.8115160187391612378604577315854839980602264404296875p480] 

; mpf : + 3654743239598875 480
; mpfd: + 3654743239598875 480 (5.6551e+144) class: Pos. norm. non-zero
; hwf : + 3654743239598875 480 (5.6551e+144) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110001111 #b0110110101000000110110101000100100100010000010011111)))
(assert (= y (fp #b1 #b10111011111 #b1100111110111111100000111000100010101010001100011011)))
(assert (= r (fp #b0 #b10111011111 #b1100111110111111100000111000100010101010001100011011)))
(assert  (not (= (fp.sub roundTowardZero x y) r)))
(check-sat)
(exit)
