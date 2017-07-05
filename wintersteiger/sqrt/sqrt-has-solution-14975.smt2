(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.044999296203410921179965953342616558074951171875p729 {+ 202658813613616 729 (2.95109e+219)}
; 1.044999296203410921179965953342616558074951171875p729 S == 1.4456827426537339764678335995995439589023590087890625p364
; [HW: 1.4456827426537339764678335995995439589023590087890625p364] 

; mpf : + 2007176633740817 364
; mpfd: + 2007176633740817 364 (5.4324e+109) class: Pos. norm. non-zero
; hwf : + 2007176633740817 364 (5.4324e+109) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011011000 #b0000101110000101000100101110100110001001011000110000)))
(assert (= r (fp #b0 #b10101101011 #b0111001000011000010000111010010000010110111000010001)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
