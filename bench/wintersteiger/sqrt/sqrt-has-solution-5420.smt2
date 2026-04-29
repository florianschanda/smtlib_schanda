(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.033703926470880052335132859298028051853179931640625p298 {+ 151788990695178 298 (5.26423e+089)}
; 1.033703926470880052335132859298028051853179931640625p298 S == 1.0167123125402188765775690626469440758228302001953125p149
; [HW: 1.0167123125402188765775690626469440758228302001953125p149] 

; mpf : + 75265564528629 149
; mpfd: + 75265564528629 149 (7.2555e+044) class: Pos. norm. non-zero
; hwf : + 75265564528629 149 (7.2555e+044) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100101001 #b0000100010100000110100100000110111110000011100001010)))
(assert (= r (fp #b0 #b10010010100 #b0000010001000111010000100001001111001100111111110101)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
