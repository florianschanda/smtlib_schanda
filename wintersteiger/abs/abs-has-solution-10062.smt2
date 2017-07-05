(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1640497200050676784854886136599816381931304931640625p-415 {+ 738814257885057 -415 (1.3757e-125)}
; 1.1640497200050676784854886136599816381931304931640625p-415 | == 1.1640497200050676784854886136599816381931304931640625p-415
; [HW: 1.1640497200050676784854886136599816381931304931640625p-415] 

; mpf : + 738814257885057 -415
; mpfd: + 738814257885057 -415 (1.3757e-125) class: Pos. norm. non-zero
; hwf : + 738814257885057 -415 (1.3757e-125) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001100000 #b0010100111111111001010011001011001010110111110000001)))
(assert (= r (fp #b0 #b01001100000 #b0010100111111111001010011001011001010110111110000001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
