(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.61885101291726396510739505174569785594940185546875p455 {+ 2787057191172044 455 (1.5061e+137)}
; 1.61885101291726396510739505174569785594940185546875p455 S == 1.7993615606193571476723036539624445140361785888671875p227
; [HW: 1.7993615606193571476723036539624445140361785888671875p227] 

; mpf : + 3600004426539635 227
; mpfd: + 3600004426539635 227 (3.88086e+068) class: Pos. norm. non-zero
; hwf : + 3600004426539635 227 (3.88086e+068) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111000110 #b1001111001101101000001010001110110010011011111001100)))
(assert (= r (fp #b0 #b10011100010 #b1100110010100010111101011001000010001010001001110011)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
