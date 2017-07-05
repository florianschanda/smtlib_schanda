(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5327749255301348352276136211003176867961883544921875p678 {+ 2399404956089859 678 (1.92227e+204)}
; 1.5327749255301348352276136211003176867961883544921875p678 | == 1.5327749255301348352276136211003176867961883544921875p678
; [HW: 1.5327749255301348352276136211003176867961883544921875p678] 

; mpf : + 2399404956089859 678
; mpfd: + 2399404956089859 678 (1.92227e+204) class: Pos. norm. non-zero
; hwf : + 2399404956089859 678 (1.92227e+204) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010100101 #b1000100001100011111100000000000101000111111000000011)))
(assert (= r (fp #b0 #b11010100101 #b1000100001100011111100000000000101000111111000000011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
