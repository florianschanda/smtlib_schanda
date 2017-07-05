(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1669283745767728976971966403652913868427276611328125p-950 {+ 751778565541517 -950 (1.22616e-286)}
; Y = 1.2428307171715082812823993663187138736248016357421875p-528 {+ 1093612327367715 -528 (1.41441e-159)}
; 1.1669283745767728976971966403652913868427276611328125p-950 % 1.2428307171715082812823993663187138736248016357421875p-528 == 1.1669283745767728976971966403652913868427276611328125p-950
; [HW: 1.1669283745767728976971966403652913868427276611328125p-950] 

; mpf : + 751778565541517 -950
; mpfd: + 751778565541517 -950 (1.22616e-286) class: Pos. norm. non-zero
; hwf : + 751778565541517 -950 (1.22616e-286) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001001001 #b0010101010111011110100010110010110010100111010001101)))
(assert (= y (fp #b0 #b00111101111 #b0011111000101010001001110110010010110111010000100011)))
(assert (= r (fp #b0 #b00001001001 #x2abbd16594e8d)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
