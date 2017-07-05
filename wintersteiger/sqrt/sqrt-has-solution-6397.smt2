(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4439198408440299115085281300707720220088958740234375p200 {+ 1999237229807543 200 (2.32029e+060)}
; 1.4439198408440299115085281300707720220088958740234375p200 S == 1.2016321570447547895099660308915190398693084716796875p100
; [HW: 1.2016321570447547895099660308915190398693084716796875p100] 

; mpf : + 908070507332667 100
; mpfd: + 908070507332667 100 (1.52325e+030) class: Pos. norm. non-zero
; hwf : + 908070507332667 100 (1.52325e+030) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011000111 #b0111000110100100101110110000111001111000011110110111)))
(assert (= r (fp #b0 #b10001100011 #b0011001110011110001010100100000001010100010000111011)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
