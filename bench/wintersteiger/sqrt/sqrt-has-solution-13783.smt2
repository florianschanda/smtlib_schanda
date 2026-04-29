(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1423182800025541983046650784672237932682037353515625p-154 {+ 640944552787513 -154 (5.00228e-047)}
; 1.1423182800025541983046650784672237932682037353515625p-154 S == 1.0687929079117968189649445776012726128101348876953125p-77
; [HW: 1.0687929079117968189649445776012726128101348876953125p-77] 

; mpf : + 309815714437301 -77
; mpfd: + 309815714437301 -77 (7.07268e-024) class: Pos. norm. non-zero
; hwf : + 309815714437301 -77 (7.07268e-024) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101100101 #b0010010001101110111110001000011000111011111000111001)))
(assert (= r (fp #b0 #b01110110010 #b0001000110011100011010010111100110101101100010110101)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
