(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.14085365050014519994192596641369163990020751953125p-744 {+ 634348447906228 -744 (1.23286e-224)}
; Y = -1.2080222262100306362953006100724451243877410888671875p740 {- 936848820444275 740 (-6.98669e+222)}
; 1.14085365050014519994192596641369163990020751953125p-744 < -1.2080222262100306362953006100724451243877410888671875p740 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100010111 #b0010010000001110111111000001111001101011100110110100)))
(assert (= y (fp #b1 #b11011100011 #b0011010101000000111100011101001001101001110001110011)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
