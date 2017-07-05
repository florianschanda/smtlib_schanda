(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1182261519540002137063083864632062613964080810546875p800 {+ 532443253885483 800 (7.45635e+240)}
; Y = -1.5045796554977790560059247582103125751018524169921875p362 {- 2272424748478531 362 (-1.41343e+109)}
; 1.1182261519540002137063083864632062613964080810546875p800 < -1.5045796554977790560059247582103125751018524169921875p362 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100011111 #b0001111001000100000100011011000000101100101000101011)))
(assert (= y (fp #b1 #b10101101001 #b1000000100101100001000011101111010010111000001000011)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
