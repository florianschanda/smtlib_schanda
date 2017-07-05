(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6967737628424528484316624599159695208072662353515625p1003 {- 3137990058698809 1003 (-1.45449e+302)}
; Y = +zero {+ 0 -1023 (0)}
; -1.6967737628424528484316624599159695208072662353515625p1003 < +zero == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111101010 #b1011001001011111110000111110110000011110100000111001)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
