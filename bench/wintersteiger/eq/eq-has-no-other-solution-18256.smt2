(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.379400534622075458202061781776137650012969970703125p502 {+ 1708668106348146 502 (1.80613e+151)}
; Y = 1.4848965131060196664947170575032941997051239013671875p64 {+ 2183779755737523 64 (2.73915e+019)}
; 1.379400534622075458202061781776137650012969970703125p502 = 1.4848965131060196664947170575032941997051239013671875p64 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111110101 #b0110000100100000011001001011100001001001011001110010)))
(assert (= y (fp #b0 #b10000111111 #b0111110000100010001011011000100110111100000110110011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
