(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.123862257149677912337892848881892859935760498046875p914 {+ 557826015144558 914 (1.55643e+275)}
; 1.123862257149677912337892848881892859935760498046875p914 | == 1.123862257149677912337892848881892859935760498046875p914
; [HW: 1.123862257149677912337892848881892859935760498046875p914] 

; mpf : + 557826015144558 914
; mpfd: + 557826015144558 914 (1.55643e+275) class: Pos. norm. non-zero
; hwf : + 557826015144558 914 (1.55643e+275) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110010001 #b0001111110110101011011111101011110101010101001101110)))
(assert (= r (fp #b0 #b11110010001 #b0001111110110101011011111101011110101010101001101110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
